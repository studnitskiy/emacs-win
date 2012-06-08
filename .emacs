(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
; '(custom-safe-themes (quote ("85bda60e82c880f525317e9a1aa96d78c0ee8757" "bbc17c569971e407fb2422c1d7b80e050f2749fa" default)))
; '(tool-bar-mode nil)
)
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "SystemWindow" :foreground "SystemWindowText" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 158 :width normal :foundry "outline" :family "Tahoma")))))

(tool-bar-mode -1)

(defun w32-maximize-frame ()
  "Maximize the current frame"
  (interactive)
  (w32-send-sys-command 61488))
 
(add-hook 'window-setup-hook 'w32-maximize-frame t)

(setq load-path
      (cons "~/.emacs.d/color-theme-6.6.0"
	    load-path))
(require 'color-theme)
(color-theme-initialize)
(color-theme-monokai)