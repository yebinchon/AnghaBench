
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct e82545_softc {int esc_ICR; int esc_ITR; int esc_IMS; } ;


 int DPRINTF (char*,int) ;





 int e82545_icr_deassert (struct e82545_softc*,int) ;

__attribute__((used)) static uint32_t
e82545_intr_read(struct e82545_softc *sc, uint32_t offset)
{
 uint32_t retval;

 retval = 0;

 DPRINTF("intr_read: off %x\n\r", offset);

 switch (offset) {
 case 132:
  retval = sc->esc_ICR;
  sc->esc_ICR = 0;
  e82545_icr_deassert(sc, (uint32_t)~0);
  break;
 case 128:
  retval = sc->esc_ITR;
  break;
 case 131:

  break;
 case 129:
  retval = sc->esc_IMS;
  break;
 case 130:

  break;
 default:
  break;
 }

 return (retval);
}
