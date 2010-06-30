(in-package #:cl-random-asd)

(defpackage #:cl-random
    (:nicknames :rv)
  (:use :common-lisp
        ;;	:cl-utilities
        :alexandria
        :iterate
        :bind
        :lla
        :anaphora
        :cl-num-utils)
  (:shadowing-import-from :iterate :collecting :collect)
  (:shadowing-import-from :cl-num-utils :mean :variance :xor) ; also in alexandria
  (:export

   ;; utilities

   missing not-implemented undefined positive-double-float vector-double-float
   vector-positive-double-float truncation-boundary

   ;; log-infinity

   plus-infinity ~+ ~- ~log ~exp

   ;; random

   rv generator generator* rv-type dimensions draw draw* pdf pdf* log-pdf 
   log-pdf* mean* variance* cdf cdf* univariate-continuous-generator
   univariate-discrete-generator univariate multivariate quantile quantile*

   ;; univariate

   uniform left right draw-standard-exponential exponential beta
   normal mu sigma pdf-standard-normal cdf-standard-normal
   draw-standard-normal to-standard-normal from-standard-normal
   truncated-normal left right gamma alpha beta
   generator-standard-gamma inverse-gamma chi-square inverse-chi-square
   beta discrete probabilities

   ;; multivariate

   mv-normal mv-t xx-inverse-right-sqrt linear-regression wishart nu scale
   inverse-wishart

   ;; statistics
   
   add-constant-column column-sums column-means demean-columns column-variances
   column-mean-variances rescale-by-sd empirical-quantiles

   ;; special-functions

   log-gamma gamma

   ;; design-matrix
   
   design-matrix

   ;; optimization

   numdiff numdiff1 numdiff* numdiff1* bfgs-parameters linesearch-max-iter
   numdiff-epsilon rho sigma alpha-max tau1 tau2 tau3 kappa 
   *default-bfgs-parameters* bfgs-minimize

   ))
