(use-package magit
  :custom
  (magit-display-buffer-function #'magit-display-buffer-same-window-except-diff-v1)
  :bind ("C-c g" . magit-file-dispatch))

(use-package diff-hl
  :init (global-diff-hl-mode +1)
  :hook (magit-post-refresh-hook . diff-hl-magit-post-refresh))

;(use-package git-gutter
;  :init (global-git-gutter-mode +1))

(use-package forge
  :custom
  (setq  forge-topic-list-limit '(100 . 0)))

(use-package git-timemachine
  :bind ("C-c G" . git-timemachine))
