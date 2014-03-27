(tool-bar-mode 0)
;;transparenz
(set-frame-parameter (selected-frame) 'alpha 88)

;;daemon mode
(server-start)
(add-hook 'after-init-hook 'server-start)
(add-hook 'server-done-hook
	  (lambda ()
	    (shell-command
	     "screen -r -X select `cat ~/.emacsclient-caller`")))
;; Color-Theme mode
;;(add-to-list 'load-path "D:\\Programme\\emacs-22.1\\site-lisp\\color-theme-6.6.0\\color-theme.el")
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-midnight)))

;;Code Completion
(add-to-list 'load-path "./")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "..//ac-dict")
(ac-config-default)

;;-----------------
;; Groovy

;; autoload 'groovy-mode "groovy-mode"
;;  "Mode for editing groovy source files" t)
;;  (setq auto-mode-alist
;;  (append '(("\\.groovy$" . groovy-mode)) auto-mode-alist))
;;  (setq interpreter-mode-alist (append '(("groovy" . groovy-mode))
;;  interpreter-mode-alist))

;;; use groovy-mode when file ends in .groovy or has #!/bin/groovy at start
(autoload 'groovy-mode "groovy-mode" "Groovy editing mode." t)
(add-to-list 'auto-mode-alist '("\.groovy$" . groovy-mode))
(add-to-list 'interpreter-mode-alist '("groovy" . groovy-mode))

(autoload 'groovy-mode "groovy-mode" "Groovy mode." t)
(autoload 'run-groovy "inf-groovy" "Run an inferior Groovy process")
(autoload 'inf-groovy-keys "inf-groovy" "Set local key defs for inf-groovy in groovy-mode")

;;;; END GROOVY

;; Move a line or region ALT+UP/DOWN
(require 'move-text)
(move-text-default-bindings)

;;;; MarkDown-Mode
(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;;;; END MarkDown-Mode

;;;; YAML-Mode
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

;;;; END YAML-Mode

;;;; forces ruby-mode to use tabs for indentation with
;;;; an indent level of 4
(setq indent-tabs-mode 1)
(setq ruby-indent-level 4)

;; To use graphviz-dot-mode, add 
;;(load-file "graphviz-dot-mode.el")
(require 'graphviz-dot-mode)
(add-to-list 'auto-mode-alist '("\\.dot\\'" . graphviz-dot-mode))

;;-----------------
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(text-mode-default ((t (:inherit autoface-default :stipple nil :strike-through nil :underline nil :slant normal :weight normal :height 130 :width normal :family "Lucida Grande")))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aquamacs-additional-fontsets nil t)
 '(aquamacs-customization-version-id 216 t)
 '(aquamacs-tool-bar-user-customization nil t)
 '(default-frame-alist (quote ((tool-bar-lines . 0) (fringe) (right-fringe) (left-fringe . 1) (internal-border-width . 0) (vertical-scroll-bars . right) (cursor-type . box) (menu-bar-lines . 1) (background-color . "black") (foreground-color . "grey85") (background-mode . dark) (mouse-color . "grey85") (cursor-color . "grey85"))))
 '(emulate-mac-german-keyboard-mode t)
 '(global-flyspell-mode t)
 '(global-linum-mode t)
 '(make-backup-files t)
 '(ns-tool-bar-display-mode nil t)
 '(ns-tool-bar-size-mode nil t)
 '(visual-line-mode nil t))
