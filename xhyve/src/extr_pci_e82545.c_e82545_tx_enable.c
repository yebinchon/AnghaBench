
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e82545_softc {int esc_tx_enabled; } ;



__attribute__((used)) static void
e82545_tx_enable(struct e82545_softc *sc)
{

 sc->esc_tx_enabled = 1;
}
