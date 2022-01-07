
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct e82545_softc {int esc_CTRL; } ;


 int DPRINTF (char*,int) ;
 int E1000_CTRL_RST ;
 int e82545_reset (struct e82545_softc*,int) ;

__attribute__((used)) static void
e82545_devctl(struct e82545_softc *sc, uint32_t val)
{

 sc->esc_CTRL = val & (uint32_t)~E1000_CTRL_RST;

 if (val & E1000_CTRL_RST) {
  DPRINTF("e1k: s/w reset, ctl %x\n", val);
  e82545_reset(sc, 1);
 }

}
