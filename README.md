# testkeras

We want to verify that basilisk can handle keras3

We would like to programmatically retrieve
versions of all python packages used with keras3 in
a reticulate session.

When we are using sklearn the function lksk in this package
can produce:

```
-----
session_info        1.0.0
-----
charset_normalizer  3.4.2
cython_runtime      NA
joblib              1.5.0
numpy               2.1.3
rpycall             NA
rpytools            NA
scipy               1.15.3
sklearn             1.5.0
threadpoolctl       3.6.0
-----
Python 3.12.10 (main, May  1 2025, 09:57:39) [Clang 17.0.0 (clang-1700.0.13.3)]
macOS-15.5-arm64-arm-64bit
-----
Session information updated at 2025-05-23 06:54
```

But for keras3 we can't do exactly this.  We can verify that
keras3 works and is present; with `py_help` we can see

```
   mixed_precision (package)
    models (package)
    ops (package)
    optimizers (package)
    preprocessing (package)
    quantizers (package)
    random (package)
    regularizers (package)
    saving (package)
    tree (package)
    utils (package)
    visualization (package)
    wrappers (package)

VERSION
    3.10.0

FILE
    /Users/vincentcarey/Library/Caches/org.R-project.R/R/basilisk/1.21.3/testkeras/0.0.1/bsklenv/lib/python3.12/site-packages/keras/_tf_keras/keras/__init__.py
```

In summary, there is no reason not to use basilisk with Ibex.

