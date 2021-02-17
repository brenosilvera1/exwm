;;; init.el --- Summary

;;; Commentary:

;;; Code:

;; Paths
(add-to-list 'load-path "/home/b2r1s8/.emacs.d/pde/")
(load "pde-load")

;; Repos
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("org" . "https://orgmode.org/elpa/")
			 ("elpa" . "https://elpa.gnu.org/packages/")))
(package-initialize)

;;; Bootstrap use-package
;; Install use-package if it's not already installed.
;; use-package is used to configure the rest of the packages.
(unless (or (package-installed-p 'use-package)
		(package-installed-p 'diminish))
	(package-refresh-contents)
	(package-install 'use-package)
	(package-install 'diminish))
(require 'use-package-ensure)
(setq use-package-always-ensure t)

;; From use-package README
(eval-when-compile
  (require 'use-package))
(use-package diminish)                ;; if you use :diminish
(use-package bind-key)

(use-package auto-package-update
  :custom
  (auto-package-update-interval 5)
  (auto-package-update-prompt-before-update t)
  (auto-package-update-hide-results t)
  :config
  (auto-package-update-maybe)
  (auto-package-update-at-time "00:00"))

(use-package diminish
  :ensure t)

;;; Load the config
(org-babel-load-file (concat user-emacs-directory "config.org"))

;; Coisas do Melpa
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes '(euphoria retro-green))
 '(custom-safe-themes
   '("499c3dd62c262b0bbb3ea0f5c83e92db5eac4a2a58468b51900e0ca706a7ad12" "0ec7094cc0a201c1d6f7c37f2414595d6684403b89b6fd74dcc714b5d41cd338" "922f930fc5aeec220517dbf74af9cd2601d08f8250e4a15c385d509e22629cac" "b5cff93c3c6ed12d09ce827231b0f5d4925cfda018c9dcf93a2517ce3739e7f1" "09feeb867d1ca5c1a33050d857ad6a5d62ad888f4b9136ec42002d6cdf310235" "06e0662b31a2ae8da5c6b5e9a05b25fabd1dc8dd3c3661ac194201131cafb080" "7de92d9e450585f9f435f2d9b265f34218cb235541c3d0d42c154bbbfe44d4dd" "69ad4071c7b2d91543fddd9030816404ff22e46f7207549319ce484e23082dee" "cdc2a7ba4ecf0910f13ba207cce7080b58d9ed2234032113b8846a4e44597e41" "ff8be9ed2696bf7bc999423d909a603cb23a9525bb43135c0d256b0b9377c958" "1a094b79734450a146b0c43afb6c669045d7a8a5c28bc0210aba28d36f85d86f" "9dc64d345811d74b5cd0dac92e5717e1016573417b23811b2c37bb985da41da2" "0f302165235625ca5a827ac2f963c102a635f27879637d9021c04d845a32c568" "9685cefcb4efd32520b899a34925c476e7920725c8d1f660e7336f37d6d95764" "0615f6940c6c5e5638c9157644263889db755d43576c25f7b311806f4cfe2c3a" "be2c1a78f42783eab9ff068c3f09e81a7908a77a1d288ce8d704491165ef448b" "be0efbaebc85494f3c1c06e320fd13a24abf485d5f221a90fe811cea9a39ed85" "a0d9281cf41e8a226f0539a7f54e4812fdeaaec36c751b84671df97a54013465" "ded82bed6a96cb8fdc7a547ef148679e78287664a5236e9c694e917383b052d7" "dd7213b37f448685f41e28b83a497f78fdefeeef0d47531fc24e99f576a7a191" "b80d4f6dee7691fc5a437d760164c3eba202944b3f977d5b47bbb6b76cba0806" "660376e0336bb04fae2dcf73ab6a1fe946ccea82b25f6800d51977e3a16de1b9" default))
 '(erc-modules
   '(autojoin button completion fill irccontrols keep-place list match menu move-to-prompt netsplit networks noncommands notifications readonly replace ring services smiley sound stamp spelling track))
 '(org-bullets-bullet-list '("◉" "○" "●" "○" "●" "○" "●") nil nil "Customized with use-package org-bullets")
 '(package-selected-packages
   '(doom-modeline ws-butler counsel exwm emms pdf-tools elpher typit org-beautify-theme org-babel-eval-in-repl gnugo dark-mint-theme color-theme-modern ace-window all-the-icons neotree autocomplete use-package))
 '(typit-test-time 30))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-candidate-mouse-face ((t (:background "black" :foreground "green"))))
 '(ac-selection-face ((t (:background "green" :foreground "black"))))
 '(border ((t (:background "green" :width normal))))
 '(cursor ((t (:background "green" :foreground "black"))))
 '(ivy-current-match ((t (:extend t :background "green" :foreground "black"))))
 '(ivy-minibuffer-match-highlight ((t (:background "green" :foreground "black"))))
 '(mouse ((t (:background "green" :foreground "green"))))
 '(rectangle-preview ((t (:inherit region :background "green" :foreground "black"))))
 '(region ((t (:extend t :background "green" :foreground "black"))))
 '(scroll-bar ((t (:background "dim gray" :foreground "green"))))
 '(secondary-selection ((t (:extend t :background "dim gray" :foreground "green"))))
 '(tab-bar ((t (:background "green" :foreground "black"))))
 '(tab-bar-tab ((t (:background "green" :foreground "black"))))
 '(tabbar-default-face ((t (:background "green" :foreground "black"))))
 '(tabbar-selected-face ((t (:background "green" :foreground "black"))))
 '(tabbar-unselected-face ((t (:background "black" :foreground "green"))))
 '(typit-correct-char ((t (:inherit success :background "green" :foreground "black"))))
 '(typit-value ((t (:inherit font-lock-constant-face :foreground "green"))))
 '(typit-wrong-char ((t (:inherit error :foreground "red")))))

;;; init.el ends here
