This repository provides the MATLAB and Python code used in the analysis presented in:

Benchmarking Conditioners in Liang¨CKleeman Information Flow: Application to Land¨CAtmosphere Interactions in Humid Forests
Siddique et al., 2026 (Earth System Dynamics)

Repository Structure

Multi_LKIF: MATLAB functions and scripts for computing multivariate LKIF, including time-varying estimation with Kalman filter. All functions used for calculating information flow (IF), are included here.

ANOVA.ipynb: Python notebook for running the regime-based ANOVA of ¦¤IF, quantifying drivers of divergence between bivariate and multivariate causal estimates.

Toy Model.ipynb: Demonstrates theoretical synthetic VAR model experiments under hidden confounding (Appendix A of paper).

rIF_deltaIF.ipynb: Script for calculating |rIF| and |¦¤IF|, visualized via split-triangle heatmaps.

Conditioner_Based_Couplings_Analysis.ipynb: Computes the Conditioner Dominance Index (CDI), Moderation Gain (MG), Conditioning Pressure (CP), and Convergence Rate (CR).


Terminology note. During peer review, the terminology was standardized from mediator/confounder terminology to the broader terms conditioner/conditioning, because the variables considered in the framework may act as confounders or mediators. Some variable names, comments, or file names in the code may retain the earlier terminology; these refer to the same conditioning procedures and do not affect the calculations or results.
