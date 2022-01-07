
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct fifo {int num; int size; size_t windex; int * buf; } ;
struct ps2kbd_softc {struct fifo fifo; } ;



__attribute__((used)) static void
fifo_put(struct ps2kbd_softc *sc, uint8_t val)
{
 struct fifo *fifo;

 fifo = &sc->fifo;
 if (fifo->num < fifo->size) {
  fifo->buf[fifo->windex] = val;
  fifo->windex = (fifo->windex + 1) % fifo->size;
  fifo->num++;
 }
}
