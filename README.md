# Compare rbohC and rbohF mutants in presence of Cd

## Install

You will need a local copy of the GitHub repository on your machine. It can be done using git in the shell: 

```bash
git clone git@github.com:bullones/RBOHmutants.git
```

Alternatively, you can go to <https://github.com/bullones/RBOHmutants/> and click on _Code_ button and then _Clone_, or select _Download ZIP_ or any other possibility you prefer. The cloned of unzipped directory `RBOHmutants` should be placed somewhere on your `$HOME` in Linux, macOS and Windows.

***

## Components

The GitHub repository and your local version will contain the following files and folders:

- `data`: a folder containing the input data files
- `location`: a folder containing the subcellular location files
- `configure_mutant_CdvsCtrl.R`: a file containing all parameters necessary to execute _RBOHmutants_ for the analysis after Cd exposure in WT and mutants _rbohC_ and _rbohF_
- `analysis_mutant_CdvsCtrl.Rmd`: a markdown file to plot the expression of DEPs as normalised abundances with heatmaps, compare the common DEPs between the mutants and the WT with Venn diagrams, and check the cellular location of the DEPs
- `Cd_Results`: a folder containing the output file generated in the execution of `analysis_mutant_CdvsCtrl.Rmd` script
- `configure_WTvsMutant.R`: a file containing all parameters necessary to execute _RBOHmutants_ for the analysis between controls in WT and mutants _rbohC_ and _rbohF_
- `analysis_WTvsMutant.Rmd`: a markdown file to compare the DEPs that change after Cd treatment and also change in respect to WT, plot the expression of DEPs as normalised abundances with heatmaps, and check the cellular location of the DEPs
- `Control_Results`: a folder containing the output file generated in the execution of `analysis_WTvsMutant.Rmd` script

***

## Prerequisites and dependencies

Minimum **RAM** required (depending on dataset size): 16 GB. Recommended RAM: 32 GB+

**R packages/libraries** required are:

- `knitr`
- `rmarkdown`
- `venn`
- `VennDiagram`
- `ggplot2`
- `plotly`
- `DT`
- `pheatmap`
- `reshape2`

***

## Quick Start and Configuration

_RBOHmutants_ scripts can be launched using R console or RStudio in macOS, linux or Windows as

```r
> source("~/PATH_TO/configure_mutant_CdvsCtrl.R")
```

or

```r
> source("~/PATH_TO/configure_WTvsMutant.R")
```

***

## Output files

Each execution of _RBOHmutants_ scripts will create a separate folder close to your data, that is, within the `SUB_DIR` folder. The created folder will be called

> `results_{DATETIME}`

where `{DATETIME}` is the date and time of the execution (for example, *2023-07-09_18.01.39*) to guarantee that a different folder is created on every execution and no overwriting will occur.

For the execution of `configure_mutant_CdvsCtrl.R`, the folder `results_2026-01-20_12.29.01` contains:

- ` Report.html`: an HTML report explaining the analysis and plots
- `DEP_all_membrane.tsv`: membrane DEPs location for all proteins despite if they are up- or down-regulated in any genotype
- `DEP_all.tsv`: DEPs that are common between WT, _rbohC_ and _rbohF_ despite if they are up- or down-regulated
- `DEP_down_membrane.tsv`: membrane DEPs location for proteins that are down-regulated in at least one genotype
- `DEP_down.tsv`: DEPs that are common between WT, _rbohC_ and _rbohF_ for proteins that are down-regulated in at least one genotype
- `DEP_up_membrane.tsv`: membrane DEPs location for proteins that are up-regulated in at least one genotype
- `DEP_up.tsv`: DEPs that are common between WT, _rbohC_ and _rbohF_ for proteins that are up-regulated in at least one genotype
- `summary_table.tsv`: a summary table with the protein ID, its subcellular location, if they are transmembrane (TRUE) or not (empty cell), the log_2 value for the three conditions (_rbohC_, _rbohF_ and WT), and the protein name

For the execution of `configure_WTvsMutant.R`, the folder `results_2026-01-20_15.57.05` contains:

- ` Report.html`: an HTML report explaining the analysis and plots
- `DEP_rbohC-rbohF_all.tsv`: DEPs for each intersection for _rbohC_ in the comparison between the mutants in control conditions, _rbohC_ after Cd treatment, and _rbohC_ and the WT in control conditions, despite if they are up- or down-regulated
- `DEP_rbohC-rbohF_down.tsv`: DEPs for each intersection for _rbohC_ in the comparison between the mutants in control conditions, _rbohC_ after Cd treatment, and _rbohC_ and the WT in control conditions, for proteins that are down-regulated
- `DEP_rbohC-rbohF_up.tsv`: DEPs for each intersection for _rbohC_ in the comparison between the mutants in control conditions, _rbohC_ after Cd treatment, and _rbohC_ and the WT in control conditions, for proteins that are up-regulated
- `DEP_rbohF-rbohC_all.tsv`: DEPs for each intersection for _rbohF_ in the comparison between the mutants in control conditions, _rbohF_ after Cd treatment, and _rbohF_ and the WT in control conditions, despite if they are up- or down-regulated
- `DEP_rbohF-rbohC_down.tsv`: DEPs for each intersection for _rbohF_ in the comparison between the mutants in control conditions, _rbohF_ after Cd treatment, and _rbohF_ and the WT in control conditions, for proteins that are down-regulated
- `DEP_rbohF-rbohC_up.tsv`: DEPs for each intersection for _rbohF_ in the comparison between the mutants in control conditions, _rbohF_ after Cd treatment, and _rbohF_ and the WT in control conditions, for proteins that are up-regulated

***

## Citation

Please, reference this pipeline and its documentation as follows:

In preparation.

***

## License

![](https://licensebuttons.net/l/by/3.0/88x31.png)
[CC-BY](https://creativecommons.org/licenses/by/4.0/)

**Authors**: Amanda Bullones, M. Gonzalo Claros

Any concern, suggestion, bug or whatelse can be addressed to [Amanda Bullones](mailto:amandabullones@uma.es)


