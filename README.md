# Neural Data Analysis

## Overview

This repository contains coursework and the final project completed for **EE 638/738 – Neural Data Analysis** at the **University of Alabama at Birmingham (UAB)**.

The course focuses on processing and analyzing electroencephalography (EEG) signals using MATLAB. Throughout the semester, each assignment introduced a new signal-processing technique that was later integrated into the final project. The course progressed from basic MATLAB programming to advanced neural signal analysis techniques used in Brain–Computer Interface (BCI) research.

---

# Course Progression

## Assignment 1 – MATLAB Fundamentals

The first assignment introduced MATLAB programming fundamentals, including matrix manipulation, indexing, vectors, loops, plotting, and basic mathematical operations.

Skills learned:

- Matrix operations
- Vector manipulation
- MATLAB syntax
- Data visualization
- Basic programming concepts

These skills formed the programming foundation used throughout the remainder of the course.

---

## Assignment 2 – EEG Data Exploration

The second assignment introduced real EEG recordings using the Hoffmann et al. (2008) P300 Brain–Computer Interface dataset.

Topics included:

- Reading EEG datasets
- Understanding EEG channels
- Event markers
- Referencing techniques
- Visualizing multi-channel EEG recordings
- Understanding the P300 Event Related Potential

This assignment marked the transition from general MATLAB programming to neural signal analysis.

---

## Assignment 3 – Fourier Analysis and Convolution

This assignment introduced frequency-domain analysis.

Topics included:

- Signal convolution
- Gaussian filtering
- Fast Fourier Transform (FFT)
- Power spectrum estimation
- Simulated EEG generation
- Frequency-domain filtering

These techniques demonstrated how EEG signals can be analyzed based on their frequency content rather than only in the time domain.

---

## Assignment 4 – Wavelet Analysis

This assignment focused on time-frequency analysis using Morlet wavelets.

Topics included:

- Wavelet construction
- Complex wavelet convolution
- Time-frequency decomposition
- Spectrogram generation
- Frequency localization of EEG activity

Unlike the FFT, wavelet analysis allows changes in frequency content to be observed over time, making it especially useful for non-stationary neural signals.

---

## Assignment 5 – Hilbert Transform and Bandpass Filtering

The fifth assignment introduced instantaneous signal properties.

Topics included:

- FIR filter design
- Bandpass filtering
- Hilbert Transform
- Instantaneous phase
- Instantaneous amplitude
- Theta-band analysis

These techniques provide phase information required for later connectivity analyses.

---

## Assignment 6 – Inter-Trial Phase Clustering (ITPC)

The sixth assignment focused on measuring phase consistency across repeated EEG trials.

Topics included:

- Wavelet-based phase extraction
- Inter-Trial Phase Clustering (ITPC)
- Statistical validation
- P300 response analysis

ITPC introduced methods for evaluating neural synchronization across multiple repetitions of the same experimental condition.

---

## Assignment 7 – Principal Component Analysis (PCA)

The final assignment before the project introduced dimensionality reduction techniques.

Topics included:

- Surface Laplacian
- Principal Component Analysis (PCA)
- EEG feature extraction
- Noise reduction
- Spatial filtering

These techniques improve signal quality and simplify high-dimensional EEG recordings before further analysis.

---

# Final Project

## Beta Phase Synchronization Differences Between Motor Execution and Imagery: A PLV and Connectivity Analysis in EEG

The final project integrates many of the techniques developed throughout the semester to investigate functional brain connectivity during motor execution and motor imagery.

The objective was to determine whether real movement and imagined movement produce different patterns of synchronization in the beta frequency band (10–30 Hz), which is strongly associated with sensorimotor activity. :contentReference[oaicite:0]{index=0}

## Methodology

The EEG processing pipeline consisted of:

1. Loading EEG recordings from the PhysioNet EEG Motor Movement dataset.
2. Band-pass filtering signals between 10–30 Hz.
3. Removing artifacts using Independent Component Analysis (ICA).
4. Extracting instantaneous phase using the Hilbert Transform.
5. Computing Phase Locking Value (PLV) between brain regions.
6. Constructing functional connectivity matrices.
7. Comparing motor execution and motor imagery using permutation testing.

The project combines frequency analysis, filtering, phase estimation, statistical testing, and connectivity analysis into a complete neural signal processing pipeline. :contentReference[oaicite:1]{index=1}

---

# Project Results

The analysis showed that:

- Motor execution generally produced stronger beta-band synchronization than motor imagery.
- Functional connectivity patterns differed between execution and imagery conditions.
- Bilateral movements produced larger synchronization differences than unilateral movements.
- Cross-run PLV analysis demonstrated moderate similarity between related motor tasks.

These findings support the hypothesis that beta-band phase synchronization provides useful information for distinguishing executed movements from imagined movements, with potential applications in Brain–Computer Interfaces (BCIs) and neurorehabilitation. :contentReference[oaicite:2]{index=2}

---

# Repository Structure

```
Assignments/
    Assignment1.pdf
    Assignment2.pdf
    Assignment3.pdf
    Assignment4.pdf
    Assignment5.pdf
    Assignment6.pdf
    Assignment7.pdf

Final_Project/
    Project_Report.pdf
    Project_Presentation.pptx
    MATLAB_Code/
    Results/

Data/
Papers/
```

---

# Software

- MATLAB
- Signal Processing Toolbox
- Statistics and Machine Learning Toolbox

---

# References

1. Hoffmann U., Vesin J., Ebrahimi T., & Diserens K. (2008). *An efficient P300-based Brain–Computer Interface for disabled subjects*. Journal of Neuroscience Methods. :contentReference[oaicite:3]{index=3}

2. PhysioNet EEG Motor Movement/Imagery Dataset.
