;;; vibrant-theme.el --- VibranInk theme for GNU Emacs 24 (deftheme)

;; Author: arkhan
;; URL: https://github.com/arkhan/emacs-vibrant-theme
;; Version: 0.0.1

(deftheme vibrant "Vibrant Ink color theme")

(let ((class '((class color) (min-colors 89)))
       (vibrant-fg "#ffffff")
       (vibrant-bg (if (display-graphic-p) "#000000" nil))
       (vibrant-gray "#444444")
       (vibrant-orange "#ff6600")
       )

       (custom-theme-set-faces
         'vibrant
         `(default ((,class (:foreground ,vibrant-fg :background ,vibrant-bg))))
         `(cursor ((,class ((:foreground ,vibrant-fg :background ,vibrant-bg)))))
         `(region ((,class (:background ,vibrant-gray))))
         `(fringe ((,class (:background ,vibrant-bg))))
         `(minibuffer-prompt ((,class (:foreground ,vibrant-orange))))
         ;; '(font-lock-builtin-face ((t (:foreground "#aaccff"))))
         ;; '(font-lock-comment-face ((t (:slant italic :foreground "#9933cc"))))
         ;; '(font-lock-constant-face ((t (:foreground "#339999"))))
         ;; '(font-lock-function-name-face ((t (:foreground "#ffcc00"))))
         ;; '(font-lock-keyword-face ((t (:foreground "#ff6600"))))
         ;; '(font-lock-string-face ((t (:foreground "#66ff00"))))
         ;; '(font-lock-type-face ((t (:foreground "#ffffff"))))
         ;; '(font-lock-variable-name-face ((t (:foreground "#ffffff"))))
         ;; '(font-lock-warning-face ((t (:foreground "#ffb5d0" :weight bold))))
         ;; '(erb-out-delim-face ((t (:foreground "#E6E1DC"))))
         ;; '(erb-delim-face ((t (:foreground "#E6E1DC" ))))
         ;; '(erb-exec-face ((t (:background "#191919"))))
         ;; '(erb-out-face ((t (:background "#191919"))))
         ;; '(isearch ((t (:background "#555555"))))
         ;; '(lazy-highlight ((t (:background "#444444"))))
         ;; '(link ((t (:foreground "#aaccff" :underline t))))
         ;; '(link-visited ((t (:foreground "#aaccff" :underline t))))
         ;; '(button ((t (:background "#bfbfbf" :underline t))))
         ;; '(header-line ((t (:background "#e5e5e5" :foreground "#333333"))))
         `(mode-line ((,class (:foreground ,vibrant-fg :background nil))))
         `(mode-line-inactive ((,class (:foreground ,vibrant-fg :background nil))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'vibrant)

;;; vibrant-theme.el ends here
