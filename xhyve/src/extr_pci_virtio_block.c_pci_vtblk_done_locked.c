
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_vtblk_softc {int vbsc_vq; } ;
struct pci_vtblk_ioreq {int io_idx; int * io_status; struct pci_vtblk_softc* io_sc; } ;
struct blockif_req {struct pci_vtblk_ioreq* br_param; } ;


 int ENOSYS ;
 int EOPNOTSUPP ;
 int VTBLK_S_IOERR ;
 int VTBLK_S_OK ;
 int VTBLK_S_UNSUPP ;
 int vq_endchains (int *,int ) ;
 int vq_relchain (int *,int ,int) ;

__attribute__((used)) static void
pci_vtblk_done_locked(struct blockif_req *br, int err)
{
 struct pci_vtblk_ioreq *io = br->br_param;
 struct pci_vtblk_softc *sc = io->io_sc;


 if (err == EOPNOTSUPP || err == ENOSYS)
  *io->io_status = VTBLK_S_UNSUPP;
 else if (err != 0)
  *io->io_status = VTBLK_S_IOERR;
 else
  *io->io_status = VTBLK_S_OK;






 vq_relchain(&sc->vbsc_vq, io->io_idx, 1);
 vq_endchains(&sc->vbsc_vq, 0);

}
