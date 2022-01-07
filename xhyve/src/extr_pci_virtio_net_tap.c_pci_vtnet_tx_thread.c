
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vqueue_info {TYPE_1__* vq_used; } ;
struct pci_vtnet_softc {int tx_in_progress; int tx_mtx; int tx_cond; scalar_t__ resetting; struct vqueue_info* vsc_queues; } ;
struct TYPE_2__ {int vu_flags; } ;


 int VRING_USED_F_NO_NOTIFY ;
 size_t VTNET_TXQ ;
 int assert (int) ;
 int mb () ;
 int pci_vtnet_proctx (struct pci_vtnet_softc*,struct vqueue_info*) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int vq_endchains (struct vqueue_info*,int) ;
 scalar_t__ vq_has_descs (struct vqueue_info*) ;

__attribute__((used)) static void *
pci_vtnet_tx_thread(void *param)
{
 struct pci_vtnet_softc *sc = param;
 struct vqueue_info *vq;
 int error;

 vq = &sc->vsc_queues[VTNET_TXQ];





 pthread_mutex_lock(&sc->tx_mtx);
 error = pthread_cond_wait(&sc->tx_cond, &sc->tx_mtx);
 assert(error == 0);

 for (;;) {

  while (sc->resetting || !vq_has_descs(vq)) {
   vq->vq_used->vu_flags &= ~VRING_USED_F_NO_NOTIFY;
   mb();
   if (!sc->resetting && vq_has_descs(vq))
    break;

   sc->tx_in_progress = 0;
   error = pthread_cond_wait(&sc->tx_cond, &sc->tx_mtx);
   assert(error == 0);
  }
  vq->vq_used->vu_flags |= VRING_USED_F_NO_NOTIFY;
  sc->tx_in_progress = 1;
  pthread_mutex_unlock(&sc->tx_mtx);

  do {





   pci_vtnet_proctx(sc, vq);
  } while (vq_has_descs(vq));




  vq_endchains(vq, 1);

  pthread_mutex_lock(&sc->tx_mtx);
 }
}
