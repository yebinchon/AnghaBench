
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_vtblk_softc {int vsc_mtx; } ;
struct pci_vtblk_ioreq {struct pci_vtblk_softc* io_sc; } ;
struct blockif_req {struct pci_vtblk_ioreq* br_param; } ;


 int pci_vtblk_done_locked (struct blockif_req*,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void
pci_vtblk_done(struct blockif_req *br, int err) {
 struct pci_vtblk_ioreq *io = br->br_param;
 struct pci_vtblk_softc *sc = io->io_sc;

 pthread_mutex_lock(&sc->vsc_mtx);
 pci_vtblk_done_locked(br, err);
 pthread_mutex_unlock(&sc->vsc_mtx);
}
