
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct e82545_softc {int esc_ITR; int esc_ICS; int esc_IMC; int esc_IMS; } ;


 int DPRINTF (char*,int,int) ;





 int e82545_icr_assert (struct e82545_softc*,int) ;
 int e82545_icr_deassert (struct e82545_softc*,int) ;
 int e82545_ims_change (struct e82545_softc*,int) ;

__attribute__((used)) static void
e82545_intr_write(struct e82545_softc *sc, uint32_t offset, uint32_t value)
{

 DPRINTF("intr_write: off %x, val %x\n\r", offset, value);

 switch (offset) {
 case 132:
  e82545_icr_deassert(sc, value);
  break;
 case 128:
  sc->esc_ITR = value;
  break;
 case 131:
  sc->esc_ICS = value;
  e82545_icr_assert(sc, value);
  break;
 case 129:
  e82545_ims_change(sc, value);
  break;
 case 130:
  sc->esc_IMC = value;
  sc->esc_IMS &= ~value;


  break;
 default:
  break;
 }
}
