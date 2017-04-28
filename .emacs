(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (arjen))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "PfEd" :slant normal :weight normal :height 140 :width normal)))))

(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'ruby-block)
(ruby-block-mode t)

(setq package-list '(better-defaults
                     solarized-theme
                     helm-projectile
                     helm-ag
                     ruby-electric))

(setq inhibit-startup-screen t) ;; Don’t display the default splash screen

;; Autoclose paired syntax elements like parens, quotes, etc
(add-hook 'ruby-mode-hook 'ruby-electric-mode)
;;(fset 'yes-or-no-p ‘y-or-n-p) ;; Answer with y and n instead of yes and no
;;(setq confirm-kill-emacs ‘yes-or-no-p) ;; Ask for confirmation before closing emacs
(global-auto-revert-mode 1) ;; Always reload the file if it changed on disk
(setq-default line-spacing 1) ;; A nice line height
(show-paren-mode 1) ;; Highlight matching parens
(tool-bar-mode 0) ;; Disable the toolbar
;; Store all backup and autosave files in the tmp dir
(setq backup-directory-alist `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))
