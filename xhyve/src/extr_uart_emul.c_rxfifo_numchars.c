
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fifo {int num; } ;
struct uart_softc {struct fifo rxfifo; } ;



__attribute__((used)) static int
rxfifo_numchars(struct uart_softc *sc)
{
 struct fifo *fifo = &sc->rxfifo;

 return (fifo->num);
}
