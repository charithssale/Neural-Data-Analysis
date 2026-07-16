function [targetTrials, nonTargetTrials,time] = p300_wavelet(channel,frequency)
    dataP300 = load('eeg_200308290211_epochs.mat');

    fs = 2048; % sampling frequency
    
    % Remove the zeros from the end of the dataset
    datazeros = (sum(dataP300.data)==0);
    lastDataPoint = find(diff(datazeros~=0));
    data = dataP300.data(:,1:lastDataPoint);
    
    % Remove mean from each channel
    data = data - repmat(mean(data,2), 1, length(data));
    
    % Re-reference the data
    ref = 0.5*(data(33,:) + data(34,:));
    data = data - repmat(ref,34,1);

    % Build wavelet and perform wavelet convolution
    nCycles = 4;
    f = frequency;
    s = nCycles/(2*pi*f);
    A = 1/sqrt(s*sqrt(pi));
    wTime = -0.5:1/fs:0.5;
    wavelet = A*exp(1i*2*pi*f*wTime).*exp(-(wTime.^2)/(2*s^2));

    wavelet_conv = conv(data(channel,:),wavelet,'same');
    
    % Initialize matrix for trial data
    timeBefore = 0.4;
    timeAfter = 0.8;
    ptsBefore = round(timeBefore*fs); % # of time points before stimulus
    ptsAfter = round(timeAfter*fs); % # of time points after stimulus
    time = (-ptsBefore:ptsAfter)/2048;

    trials = zeros(length(dataP300.events), ptsBefore+ptsAfter+1);

    % Extract trial data
    for i=1:(length(dataP300.events)-1) %!!!!
        elapsed = etime(dataP300.events(i,:), dataP300.events(1,:)); % elapsed time since trial 1
        ind1 = round(elapsed*fs + 1 + 0.4*fs - ptsBefore);
        ind2 = ind1 + ptsBefore + ptsAfter;
        trials(i,:) = wavelet_conv(ind1:ind2);
    end

    %Perform wavelet convolution
    targetBool = (dataP300.stimuli == dataP300.target);

    targetTrials = trials(targetBool,:);
    nonTargetTrials = trials(~targetBool,:);
    nonTargetTrials = nonTargetTrials(1:end-1,:);

end