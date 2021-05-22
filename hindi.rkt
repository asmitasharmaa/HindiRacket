#lang typed/racket
(provide (all-defined-out))

;;;;;;;;;;;;;;;;; Conditions ;;;;;;;;;;;;;;;;;;;;;;

;; (agar #t phir (+ 3 4) varna (10))
;; then -> varna : फिर
(define-syntax अगर
  (syntax-rules (तब वरना)
    [(अगर e1 तब e2 वरना e3)
     (if e1 e2 e3)]))

;;;;;;;;;;;;;; Defining Numbers in Hindi ;;;;;;;;;;;
(define १ 1 )
(define २ 2 )
(define ३ 3 )
(define ४ 4 )
(define ५ 5 )
(define ६ 6 )
(define ७ 7 )
(define ८ 8 )
(define ९ 9 )
;(define १0 10 )

"संख्या जोड़ो"
;(+ १0 ५)
(/ ६ २)

display "10 + 5 = %d" (+ 10 5)

;(println "10 + 5 =" (+ 10 5))
;(println "10 + 5 =" (+ ८ ८))
;(display "10 + 5 =" (+ १0 ५))


;;;;;;;;;;;;; Comment ;;;;;;;;;;;;;;;;;;;;;;;;;

;; comment-out (car null) (+ 3 4)) -> (+ 3 4)
(define-syntax टिप्पणी
  (syntax-rules () ;empty list
    [(टिप्पणी ignore instead) instead]))

(टिप्पणी (car null) (+ 3 १))

;;;;;;;;;;;;;;;;;; For loop macro;;;;;;;;;;;;;;;;;

; "keliye" doesn't have matra for chhoti E
(define-syntax-rule (केलिए [sym init check change] steps ...)
  (let loop ([sym init]
             [value #f])
    (if check
        (let ([new-value (let () steps ...)])
          (loop change #f))
        value)))

;(define के for)
;(के ([i "abcde"])
;    (display i))

(define-syntax-rule (हर एक [sym init] steps ...)
  (let loop ([sym init]))
)
    
;(for ([i (in-range 3)])
 ;   (display i))

(केलिए [i 0 (< i 10) (add1 i)]
  (print i))

;(define के for)
(हर एक [i "abcde"]
    (display i))


;;;;;;;;;;;;;;; List and Length ;;;;;;;;;;;;;
(define सूची list)
(define लंबाई length)
(लंबाई (सूची "hop" "टिप्पणी" "पणी")) 

