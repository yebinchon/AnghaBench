
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_vtnet_softc {int rx_in_progress; int rx_mtx; } ;


 int pci_vtnet_tap_rx (struct pci_vtnet_softc*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void
pci_vtnet_tap_callback(struct pci_vtnet_softc *sc)
{
 pthread_mutex_lock(&sc->rx_mtx);
 sc->rx_in_progress = 1;
 pci_vtnet_tap_rx(sc);
 sc->rx_in_progress = 0;
 pthread_mutex_unlock(&sc->rx_mtx);

}
