;;;; -*- Mode: Lisp; Syntax: ANSI-Common-Lisp; Base: 10 -*-
(defpackage #:learn-wl-asd
  (:use :cl :asdf))

(in-package :learn-wl-asd)

(defsystem learn-wl
    :name "learn-wl"
    :version "0.0.1"
    :maintainer ""
    :author ""
    :licence ""
    :description "learn-wl"
    :depends-on (:weblocks)
    :components ((:file "learn-wl")
		 (:module conf
		  :components ((:file "stores"))
		  :depends-on ("learn-wl"))
		 (:module src
		  :components ((:file "init-session"))
		  :depends-on ("learn-wl" conf))))

