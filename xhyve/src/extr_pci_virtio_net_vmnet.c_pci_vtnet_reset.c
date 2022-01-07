
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_net_rxhdr {int dummy; } ;
struct pci_vtnet_softc {int resetting; int rx_merge; int rx_vhdrlen; int vsc_vs; scalar_t__ vsc_rx_ready; } ;


 int DPRINTF (char*) ;
 int pci_vtnet_rxwait (struct pci_vtnet_softc*) ;
 int pci_vtnet_txwait (struct pci_vtnet_softc*) ;
 int vi_reset_dev (int *) ;

__attribute__((used)) static void
pci_vtnet_reset(void *vsc)
{
 struct pci_vtnet_softc *sc = vsc;

 DPRINTF(("vtnet: device reset requested !\n"));

 sc->resetting = 1;





 pci_vtnet_txwait(sc);
 pci_vtnet_rxwait(sc);

 sc->vsc_rx_ready = 0;
 sc->rx_merge = 1;
 sc->rx_vhdrlen = sizeof(struct virtio_net_rxhdr);


 vi_reset_dev(&sc->vsc_vs);

 sc->resetting = 0;
}
