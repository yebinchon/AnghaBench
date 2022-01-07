
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int bcnt; size_t bwr; int * buffer; } ;
struct atkbdc_softc {TYPE_1__ kbd; int outport; int status; } ;


 int FIFOSZ ;
 int KBDO_KBD_OUTFULL ;
 int KBDS_KBD_BUFFER_FULL ;
 int printf (char*) ;

__attribute__((used)) static int
atkbdc_kbd_queue_data(struct atkbdc_softc *sc, uint8_t val)
{
 if (sc->kbd.bcnt < FIFOSZ) {
  sc->kbd.buffer[sc->kbd.bwr] = val;
  sc->kbd.bwr = (sc->kbd.bwr + 1) % FIFOSZ;
  sc->kbd.bcnt++;
  sc->status |= KBDS_KBD_BUFFER_FULL;
  sc->outport |= KBDO_KBD_OUTFULL;
 } else {
  printf("atkbd data buffer full\n");
 }

 return (sc->kbd.bcnt < FIFOSZ);
}
