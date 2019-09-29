;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname distance) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))

;The value of ROCKET is an image, a data type that is supported by DrRacket, but not for most languages

(require 2htdp/image)
(require 2htdp/universe)

(define HEIGHT 200)
(define WIDTH 300)

(define ROCKET .)
(define SCENE (empty-scene WIDTH HEIGHT))

(define BOTTOM (+ 7 (- HEIGHT (/ (image-height ROCKET) 2))))

(define (get-position y)
  (cond
    [(>= y BOTTOM) BOTTOM]
    [(< y BOTTOM) y]))

(define (draw-rocket y)
  (place-image ROCKET (/ WIDTH 2) (get-position y) SCENE))


(animate draw-rocket)
