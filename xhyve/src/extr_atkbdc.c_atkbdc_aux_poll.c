
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atkbdc_softc {int status; int outport; int ps2mouse_sc; } ;


 int KBDO_AUX_OUTFULL ;
 int KBDS_AUX_BUFFER_FULL ;
 int KBDS_KBD_BUFFER_FULL ;
 int atkbdc_assert_aux_intr (struct atkbdc_softc*) ;
 scalar_t__ ps2mouse_fifocnt (int ) ;

__attribute__((used)) static void
atkbdc_aux_poll(struct atkbdc_softc *sc)
{
 if (ps2mouse_fifocnt(sc->ps2mouse_sc) > 0) {
  sc->status |= KBDS_AUX_BUFFER_FULL | KBDS_KBD_BUFFER_FULL;
  sc->outport |= KBDO_AUX_OUTFULL;
  atkbdc_assert_aux_intr(sc);
 }
}
