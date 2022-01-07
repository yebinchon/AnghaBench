
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vqueue_info {TYPE_1__* vq_used; } ;
struct pci_vtnet_softc {scalar_t__ tx_in_progress; int tx_mtx; int tx_cond; } ;
struct TYPE_2__ {int vu_flags; } ;


 int VRING_USED_F_NO_NOTIFY ;
 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int vq_has_descs (struct vqueue_info*) ;

__attribute__((used)) static void
pci_vtnet_ping_txq(void *vsc, struct vqueue_info *vq)
{
 struct pci_vtnet_softc *sc = vsc;




 if (!vq_has_descs(vq))
  return;


 pthread_mutex_lock(&sc->tx_mtx);
 vq->vq_used->vu_flags |= VRING_USED_F_NO_NOTIFY;
 if (sc->tx_in_progress == 0)
  pthread_cond_signal(&sc->tx_cond);
 pthread_mutex_unlock(&sc->tx_mtx);
}
