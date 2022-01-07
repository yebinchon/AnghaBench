
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_vtnet_softc {int rx_mtx; scalar_t__ rx_in_progress; } ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int usleep (int) ;

__attribute__((used)) static void
pci_vtnet_rxwait(struct pci_vtnet_softc *sc)
{

 pthread_mutex_lock(&sc->rx_mtx);
 while (sc->rx_in_progress) {
  pthread_mutex_unlock(&sc->rx_mtx);
  usleep(10000);
  pthread_mutex_lock(&sc->rx_mtx);
 }
 pthread_mutex_unlock(&sc->rx_mtx);
}
