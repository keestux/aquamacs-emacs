(require 'imaxima-autoloads)

(add-to-list 'auto-mode-alist '("\\.max" . maxima-mode) auto-mode-alist)

(aquamacs-set-defaults
 '((maxima-input-history-file
   "~/Library/Application Support/Aquamacs Emacs/maxima_history")
   (maxima-save-input-history t)
   (imaxima-html-dir "~/Desktop/") ;; default location is ~/
   ))

;; generate maxima's temporary files for gnuplot in an appropriate
;; temp directory (else they end up in $HOME !)
(setenv "MAXIMA_TEMPDIR" temporary-file-directory)
;; set path for AquaTerm, for Gnuplot when not used inline from Maxima
(setenv "AQUATERM_PATH" "/Applications/Gnuplot.app/Contents/Resources/lib/AquaTerm.app/")
