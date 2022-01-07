
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_softc {int vs_pi; int vs_flags; TYPE_1__* vs_vc; } ;
struct TYPE_2__ {int vc_nvq; } ;


 int VIRTIO_USE_MSIX ;
 int VS_LOCK (struct virtio_softc*) ;
 int VS_UNLOCK (struct virtio_softc*) ;
 int pci_emul_add_msicap (int ,int) ;
 scalar_t__ pci_emul_add_msixcap (int ,int,int) ;
 int pci_lintr_request (int ) ;
 int vi_reset_dev (struct virtio_softc*) ;

int
vi_intr_init(struct virtio_softc *vs, int barnum, int use_msix)
{
 int nvec;

 if (use_msix) {
  vs->vs_flags |= VIRTIO_USE_MSIX;
  VS_LOCK(vs);
  vi_reset_dev(vs);
  VS_UNLOCK(vs);
  nvec = vs->vs_vc->vc_nvq + 1;
  if (pci_emul_add_msixcap(vs->vs_pi, nvec, barnum))
   return (1);
 } else
  vs->vs_flags &= ~VIRTIO_USE_MSIX;


 pci_emul_add_msicap(vs->vs_pi, 1);


 pci_lintr_request(vs->vs_pi);

 return (0);
}
