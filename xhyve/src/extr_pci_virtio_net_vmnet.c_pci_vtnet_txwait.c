
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_vtnet_softc {int tx_mtx; scalar_t__ tx_in_progress; } ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int usleep (int) ;

__attribute__((used)) static void
pci_vtnet_txwait(struct pci_vtnet_softc *sc)
{

 pthread_mutex_lock(&sc->tx_mtx);
 while (sc->tx_in_progress) {
  pthread_mutex_unlock(&sc->tx_mtx);
  usleep(10000);
  pthread_mutex_lock(&sc->tx_mtx);
 }
 pthread_mutex_unlock(&sc->tx_mtx);
}
