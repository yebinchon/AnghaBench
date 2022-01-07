
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ bcnt; size_t brd; int * buffer; } ;
struct atkbdc_softc {int status; TYPE_1__ kbd; int ps2mouse_sc; int outport; } ;


 int FIFOSZ ;
 int KBDO_AUX_OUTFULL ;
 int KBDO_KBD_OUTFULL ;
 int KBDS_AUX_BUFFER_FULL ;
 int KBDS_KBD_BUFFER_FULL ;
 int atkbdc_poll (struct atkbdc_softc*) ;
 scalar_t__ ps2mouse_fifocnt (int ) ;
 scalar_t__ ps2mouse_read (int ,int *) ;

__attribute__((used)) static void
atkbdc_dequeue_data(struct atkbdc_softc *sc, uint8_t *buf)
{
 if (ps2mouse_read(sc->ps2mouse_sc, buf) == 0) {
  if (ps2mouse_fifocnt(sc->ps2mouse_sc) == 0) {
   if (sc->kbd.bcnt == 0)
    sc->status &= ~(KBDS_AUX_BUFFER_FULL |
                    KBDS_KBD_BUFFER_FULL);
   else
    sc->status &= ~(KBDS_AUX_BUFFER_FULL);
   sc->outport &= ~KBDO_AUX_OUTFULL;
  }

  atkbdc_poll(sc);
  return;
 }

 if (sc->kbd.bcnt > 0) {
  *buf = sc->kbd.buffer[sc->kbd.brd];
  sc->kbd.brd = (sc->kbd.brd + 1) % FIFOSZ;
  sc->kbd.bcnt--;
  if (sc->kbd.bcnt == 0) {
   sc->status &= ~KBDS_KBD_BUFFER_FULL;
   sc->outport &= ~KBDO_KBD_OUTFULL;
  }

  atkbdc_poll(sc);
 }

 if (ps2mouse_fifocnt(sc->ps2mouse_sc) == 0 && sc->kbd.bcnt == 0) {
  sc->status &= ~(KBDS_AUX_BUFFER_FULL | KBDS_KBD_BUFFER_FULL);
 }
}
