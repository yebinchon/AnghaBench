
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vqueue_info {TYPE_1__* vq_used; } ;
struct pci_vtnet_softc {int vsc_rx_ready; } ;
struct TYPE_2__ {int vu_flags; } ;


 int VRING_USED_F_NO_NOTIFY ;

__attribute__((used)) static void
pci_vtnet_ping_rxq(void *vsc, struct vqueue_info *vq)
{
 struct pci_vtnet_softc *sc = vsc;




 if (sc->vsc_rx_ready == 0) {
  sc->vsc_rx_ready = 1;
  vq->vq_used->vu_flags |= VRING_USED_F_NO_NOTIFY;
 }
}
