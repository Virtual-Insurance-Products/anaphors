
(in-package :anaphors)

(defmacro awhen (test &body forms)
  `(let ((it ,test))
     (when it
       ,@forms)))

(defmacro aif (test then &optional else)
  `(let ((it ,test))
     (if it
         ,then
         ,else)))

