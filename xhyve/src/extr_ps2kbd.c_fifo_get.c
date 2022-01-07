
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct fifo {scalar_t__ num; size_t rindex; int size; int * buf; } ;
struct ps2kbd_softc {struct fifo fifo; } ;



__attribute__((used)) static int
fifo_get(struct ps2kbd_softc *sc, uint8_t *val)
{
 struct fifo *fifo;

 fifo = &sc->fifo;
 if (fifo->num > 0) {
  *val = fifo->buf[fifo->rindex];
  fifo->rindex = (fifo->rindex + 1) % fifo->size;
  fifo->num--;
  return (0);
 }

 return (-1);
}
