
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e82545_softc {int esc_mtx; int esc_tx_cond; scalar_t__ esc_tx_active; scalar_t__ esc_tx_enabled; } ;


 int pthread_cond_wait (int *,int *) ;

__attribute__((used)) static void
e82545_tx_disable(struct e82545_softc *sc)
{

 sc->esc_tx_enabled = 0;
 while (sc->esc_tx_active)
  pthread_cond_wait(&sc->esc_tx_cond, &sc->esc_mtx);
}
