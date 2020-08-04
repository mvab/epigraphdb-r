# EpiGraphDB R package `epigraphdb`

<a href="http://epigraphdb.org"><img src="man/figures/logo_wide.png" alt="" height="60" style="padding:10px"/></a> <span class="pull-right"> <a href="http://www.bris.ac.uk"><img src="man/figures/ieu40.png" alt="" height="60" style="padding:10px"/></a> <a href="http://www.bris.ac.uk/ieu"><img src="man/figures/uob40.png" alt="" height="60" style="padding:10px"/></a> </span>

<!-- badges: start -->

[![CRAN status](https://www.r-pkg.org/badges/version/epigraphdb)](https://cran.r-project.org/package=epigraphdb)
[![Travis build status](https://travis-ci.org/MRCIEU/epigraphdb-r.svg?branch=master)](https://travis-ci.org/MRCIEU/epigraphdb-r)
[![Codecov test coverage](https://codecov.io/gh/MRCIEU/epigraphdb-r/branch/master/graph/badge.svg)](https://codecov.io/gh/MRCIEU/epigraphdb-r?branch=master)

<!-- badges: end -->

[EpiGraphDB](https://epigraphdb.org) is an analytical platform and database to support data mining in epidemiology.
The platform incorporates a graph of causal estimates generated by systematically applying Mendelian randomization to a wide array of phenotypes, and augments this with a wealth of additional data from other bioinformatic sources.
EpiGraphDB aims to support appropriate application and interpretation of causal inference in systematic automated analyses of many phenotypes.

[`epigraphdb`](https://github.com/MRCIEU/epigraphdb-r) is an R package to provide ease of access to EpiGraphDB services. We will refer to `epigraphdb` as the name of the R package whereas `"EpiGraphDB"` as the overall platform.

## Installation

[`devtools`](https://devtools.r-lib.org/)
is required to install from github:

```r
# install.packages("devtools")
devtools::install_github("MRCIEU/epigraphdb-r")
```

**NOTE**: while the package repository is "epigraphdb-r",
the R package name is "epigraphdb".

## Using `epigraphdb`

`epigraphdb` provides a simple and intuitive way to query the API, as:

```r
library("epigraphdb")
#>   EpiGraphDB v0.3
#>
#>   Web API: https://api.epigraphdb.org
#>
#>   To turn off this message, use
#>   suppressPackageStartupMessages({library("epigraphdb")})
#>
#>
mr(outcome_trait = "Body mass index")
#> # A tibble: 370 x 12
#>    exposure_id exposure_name outcome_id outcome_name estimate      se
#>    <chr>       <chr>         <chr>      <chr>           <dbl>   <dbl>
#>  1 627         Epiandroster… 785        Body mass i…   0.0950 2.28e-3
#>  2 541         X-11787       835        Body mass i…  -0.0578 1.77e-4
#>  3 971         Ulcerative c… 835        Body mass i…  -0.0111 1.76e-4
#>  4 60          Waist circum… 835        Body mass i…   0.861  2.07e-2
#>  5 UKB-a:426   Eye problems… 94         Body mass i…  -1.12   1.90e-2
#>  6 UKB-a:373   Ever depress… 95         Body mass i…  -0.616  4.80e-4
#>  7 29          Birth length  95         Body mass i…  -0.141  5.67e-4
#>  8 350         Laurate (12:… 974        Body mass i…   0.418  7.10e-3
#>  9 UKB-a:124   Treatment/me… 974        Body mass i…  -5.14   1.08e-1
#> 10 95          Body mass in… 974        Body mass i…   0.981  2.79e-2
#> # … with 360 more rows, and 6 more variables: p <dbl>, ci_upp <dbl>,
#> #   ci_low <dbl>, selection <chr>, method <chr>, moescore <dbl>)
```

For more information on how to use the `epigraphdb` R package and
how to use the API in R please check out the following articles:

| Article  |
|---|
| [Using EpiGraphDB R package](https://mrcieu.github.io/epigraphdb-r/articles/using-epigraphdb-r-package.html) |
| [Using EpiGraphDB API (from R and commandline) ](https://mrcieu.github.io/epigraphdb-r/articles/using-epigraphdb-api.html) |
| [Package options](https://mrcieu.github.io/epigraphdb-r/articles/options.html)|
| [Meta functionalities of the EpiGraphDB platform](https://mrcieu.github.io/epigraphdb-r/articles/meta-functionalities.html)|
| [Case study 1: Distinguishing vertical and horizontal pleiotropy for SNP-protein associations](https://mrcieu.github.io/epigraphdb-r/articles/case-1-pleiotropy.html)|
| [Case study 2: Identification of potential drug targets](https://mrcieu.github.io/epigraphdb-r/articles/case-2-alt-drug-target.html)|
| [Case study 3: Triangulating causal estimates with literature evidence](https://mrcieu.github.io/epigraphdb-r/articles/case-3-literature-triangulation.html)|

## Package functionalities

Users can use the general query function
[query_epigraphdb](https://mrcieu.github.io/epigraphdb-r/reference/query_epigraphdb.html)
to get data from an API endpoint on EpiGraphDB without having to deal with HTTP requests by themselves.
We also provide a list of functions (see the table below) that are equivalent to the upstream endpoints for the ease of use.

<table class="table">
  <thead>
    <tr class="header">
      <th><a href="https://api.epigraphdb.org/">API</a></th>
      <th><a href="https://github.com/MRCIEU/epigraphdb-r">r package</a></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>General query</strong></td>
      <td></td>
    </tr>
    <tr>
      <td>
      </td>
      <td>
        <a href="https://mrcieu.github.io/epigraphdb-r/reference/query_epigraphdb.html"><code>query_epigraphdb</code></a>
      </td>
    </tr>
    <tr>
      <td><strong>Topic queries</strong></td>
      <td></td>
    </tr>
    <tr>
      <td>
        <a href="https://docs.epigraphdb.org/api/api-endpoints/#get-mr"><code>GET /mr</code></a>
      </td>
      <td>
        <a href="https://mrcieu.github.io/epigraphdb-r/reference/mr.html"><code>mr</code></a>
      </td>
    </tr>
    <tr>
      <td>
        <a href="https://docs.epigraphdb.org/api/api-endpoints/#get-ontologygwas-efo"><code>GET /ontology/gwas-efo</code></a>
      </td>
      <td>
        <a href="https://mrcieu.github.io/epigraphdb-r/reference/ontology_gwas_efo.html"><code>ontology_gwas_efo</code></a>
      </td>
    </tr>
    <tr>
      <td>
        <a href="https://docs.epigraphdb.org/api/api-endpoints/#get-obs-cor"><code>GET /obs-cor</code></a>
      </td>
      <td>
        <a href="https://mrcieu.github.io/epigraphdb-r/reference/obs_cor.html"><code>obs_cor</code></a>
      </td>
    </tr>
    <tr>
      <td>
        <a href="https://docs.epigraphdb.org/api/api-endpoints/#get-genetic-cor"><code>GET /genetic-cor</code></a>
      </td>
      <td>
        <a href="https://mrcieu.github.io/epigraphdb-r/reference/genetic_cor.html"><code>genetic_cor</code></a>
      </td>
    </tr>
    <tr>
      <td>
        <a href="https://docs.epigraphdb.org/api/api-endpoints/#get-pqtl"><code>GET /pqtl/</code></a>
      </td>
      <td>
        <a href="https://mrcieu.github.io/epigraphdb-r/reference/pqtl.html"><code>pqtl</code></a>
      </td>
    </tr>
    <tr>
      <td>
        <a href="https://docs.epigraphdb.org/api/api-endpoints/#get-pqtlpleio"><code>GET /pqtl/pleio/</code></a>
      </td>
      <td>
        <a
          href="https://mrcieu.github.io/epigraphdb-r/reference/pqtl_pleio.html"><code>pqtl_pleio</code></a>
      </td>
    </tr>
    <tr>
      <td>
        <a href="https://docs.epigraphdb.org/api/api-endpoints/#get-pqtllist"><code>GET /pqtl/list</code></a>
      </td>
      <td>
        <a href="https://mrcieu.github.io/epigraphdb-r/reference/pqtl_list.html"><code>pqtl_list</code></a>
      </td>
    </tr>
    <tr>
      <td>
        <a href="https://docs.epigraphdb.org/api/api-endpoints/#get-confounder"><code>GET /confounder</code></a>
      </td>
      <td>
        <a href="https://mrcieu.github.io/epigraphdb-r/reference/confounder.html"><code>confounder</code></a>
      </td>
    </tr>
    <tr>
      <td>
        <a href="https://docs.epigraphdb.org/api/api-endpoints/#get-pathway"><code>GET /pathway</code></a>
      </td>
      <td>
        <a href="https://mrcieu.github.io/epigraphdb-r/reference/pathway.html"><code>pathway</code></a>
      </td>
    </tr>
    <tr>
      <td>
        <a href="https://docs.epigraphdb.org/api/api-endpoints/#get-drugsrisk-factors"><code>GET /drugs/risk-factors</code></a>
      </td>
      <td>
        <a href="https://mrcieu.github.io/epigraphdb-r/reference/drugs_risk_factors.html"><code>drugs_risk_factors</code></a>
      </td>
    </tr>
    <tr>
      <td>
        <a href="https://docs.epigraphdb.org/api/api-endpoints/#get-xqtlmulti-snp-mr"><code>GET /xqtl/multi-snp-mr</code></a>
      </td>
      <td>
        <a href="https://mrcieu.github.io/epigraphdb-r/reference/xqtl_multi_snp_mr.html"><code>xqtl_multi_snp_mr</code></a>
      </td>
    </tr>
    <tr>
      <td>
        <a href="https://docs.epigraphdb.org/api/api-endpoints/#get-xqtlsingle-snp-mr"><code>GET /xqtl/single-snp-mr</code></a>
      </td>
      <td>
        <a href="https://mrcieu.github.io/epigraphdb-r/reference/xqtl_single_snp_mr.html"><code>xqtl_single_snp_mr</code></a>
      </td>
    </tr>
    <tr>
      <td>
        <a href="https://docs.epigraphdb.org/api/api-endpoints/#get-literaturegwas"><code>GET /literature/gwas</code></a>
      </td>
      <td>
        <a href="https://mrcieu.github.io/epigraphdb-r/reference/literature_gwas.html"><code>literature_gwas</code></a>
      </td>
    </tr>
    <tr>
      <td>
        <a href="https://docs.epigraphdb.org/api/api-endpoints/#post-proteinin-pathway"><code>POST /protein/in-pathway</code></a>
      </td>
      <td>
        <a href="https://mrcieu.github.io/epigraphdb-r/reference/protein_in_pathway.html"><code>protein_in_pathway</code></a>
      </td>
    </tr>
    <tr>
      <td>
        <a href="https://docs.epigraphdb.org/api/api-endpoints/#post-mappingsgene-to-protein"><code>POST /mappings/gene-to-protein</code></a>
      </td>
      <td>
        <a href="https://mrcieu.github.io/epigraphdb-r/reference/mappings_gene_to_protein.html"><code>mappings_gene_to_protein</code></a>
      </td>
    </tr>
  </tbody>
</table>

## EpiGraphDB resources

| link                                                | screenshot                                            |
|-----------------------------------------------------|-------------------------------------------------------|
| [docs](https://docs.epigraphdb.org)                  | ![docs](vignettes/figures/epigraphdb-docs.png)        |
| [API](https://api.epigraphdb.org)                    | ![api](vignettes/figures/epigraphdb-api-swagger.png)  |
| [web application](https://epigraphdb.org)            | ![webapp](vignettes/figures/epigraphdb-xqtl-view.png) |
| [r package](https://github.com/MRCIEU/epigraphdb-r) | ![epigraphdb-r](vignettes/figures/epigraphdb-r.png)   |

## Citation

Please cite EpiGraphDB as

> Yi Liu, Benjamin Elsworth, Pau Erola, Valeriia Haberland, Gibran Hemani, Matt Lyon, Jie Zheng, Tom R Gaunt. 2020. EpiGraphDB: a database and data mining platform for health data science. *bioRxiv*. doi:10.1101/2020.08.01.230193.

```
@article {epigraphdb2020,
  author = {Liu, Yi and Elsworth, Benjamin and Erola, Pau and Haberland, Valeriia and Hemani, Gibran and Lyon, Matt and Zheng, Jie and Gaunt, Tom R},
  title = {{EpiGraphDB}: a database and data mining platform for health data science},
  journal = {bioRxiv},
  year = {2020},
  doi = {10.1101/2020.08.01.230193},
  url = {https://epigraphdb.org}
}
```

## Contact

Please get in touch with us for issues, comments, suggestions, etc. via the following methods:

- [The issue tracker on the `epigraphdb` repo](https://github.com/MRCIEU/epigraphdb/issues)
- [The support email](mailto:feedback@epigraphdb.org)
- [The EpiGraphDB twitter](https://twitter.com/epigraphdb)
