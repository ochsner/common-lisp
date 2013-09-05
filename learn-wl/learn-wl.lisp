
(defpackage #:learn-wl
  (:use :cl :weblocks
        :f-underscore :anaphora)
  (:import-from :hunchentoot #:header-in
		#:set-cookie #:set-cookie* #:cookie-in
		#:user-agent #:referer)
  (:documentation
   "A web application based on Weblocks."))

(in-package :learn-wl)

(export '(start-learn-wl stop-learn-wl))

;; A macro that generates a class or this webapp

(defwebapp learn-wl
    :prefix "/"
    :description "learn-wl: A new application"
    :init-user-session 'learn-wl::init-user-session
    :autostart nil                   ;; have to start the app manually
    :ignore-default-dependencies nil ;; accept the defaults
    :debug t
    )

;; Top level start & stop scripts

(defun start-learn-wl (&rest args)
  "Starts the application by calling 'start-weblocks' with appropriate
arguments."
  (apply #'start-weblocks args)
  (start-webapp 'learn-wl))

(defun stop-learn-wl ()
  "Stops the application by calling 'stop-weblocks'."
  (stop-webapp 'learn-wl)
  (stop-weblocks))

