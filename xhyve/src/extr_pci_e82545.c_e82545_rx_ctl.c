
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct e82545_softc {int esc_RCTL; int esc_rx_enabled; int esc_rx_loopback; int * esc_rxdesc; scalar_t__ esc_rdba; } ;


 int DPRINTF (char*,char*,int,int) ;
 int E1000_RCTL_EN ;
 int E1000_RCTL_LBM_TCVR ;
 int e82545_rx_disable (struct e82545_softc*) ;
 int e82545_rx_enable (struct e82545_softc*) ;
 int e82545_rx_update_rdba (struct e82545_softc*) ;

__attribute__((used)) static void
e82545_rx_ctl(struct e82545_softc *sc, uint32_t val)
{
 int on;

 on = ((val & E1000_RCTL_EN) == E1000_RCTL_EN);


 sc->esc_RCTL = val & ~0xF9204c01;

 DPRINTF("rx_ctl - %s RCTL %x, val %x\n",
  on ? "on" : "off", sc->esc_RCTL, val);


 if (on != sc->esc_rx_enabled) {
  if (on) {



   if (sc->esc_RCTL & E1000_RCTL_LBM_TCVR) {
    sc->esc_rx_loopback = 1;
   } else {
    sc->esc_rx_loopback = 0;
   }

   e82545_rx_update_rdba(sc);
   e82545_rx_enable(sc);
  } else {
   e82545_rx_disable(sc);
   sc->esc_rx_loopback = 0;
   sc->esc_rdba = 0;
   sc->esc_rxdesc = ((void*)0);
  }
 }
}
