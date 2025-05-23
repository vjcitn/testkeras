
# necessary for python module control
bsklenv <- basilisk::BasiliskEnvironment(envname="bsklenv",
    pkgname="testkeras",
    packages=c("python==3.12.10"),
      pip=c("keras==3.10.0", "session-info==1.0.0", "tensorflow==2.19.0", "scikit-learn==1.5.0"))


#' just import and create a model
#' @export
lkker = function() {
 proc = basilisk::basiliskStart(bsklenv, testload="keras") # avoid package-specific import
 on.exit(basilisk::basiliskStop(proc))
 basilisk::basiliskRun(proc, function(mat, ...) {
     ke = reticulate::import("keras") 
     reticulate::py_run_string("
from tensorflow import keras
from tensorflow.keras.layers import Dense
model = keras.Sequential([
    Dense(32, activation='relu', input_shape=(10,)),
    Dense(1, activation='sigmoid')
])
")
#    reticulate::py$model  # this fails with
#    reticulate::py_run_string("
#import session_info
#session_info.show(dependencies=True)
#")
})}


#' import sklearn and look for method
#' @export
lksk = function() {
 proc = basilisk::basiliskStart(bsklenv, testload="keras") # avoid package-specific import
 on.exit(basilisk::basiliskStop(proc))
 basilisk::basiliskRun(proc, function(mat, ...) {
     sk = reticulate::import("sklearn") 
     sk
    reticulate::py_run_string("
import session_info
session_info.show(dependencies=True)
")
})
}
