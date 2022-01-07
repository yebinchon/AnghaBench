
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ahci_port {int ioqsz; int iobhd; int iofhd; int atapi; struct ahci_ioreq* ioreq; int bctx; } ;
struct TYPE_2__ {struct ahci_ioreq* br_param; int br_callback; } ;
struct ahci_ioreq {TYPE_1__ io_req; struct ahci_port* io_pr; } ;


 int STAILQ_INIT (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct ahci_ioreq*,int ) ;
 int TAILQ_INIT (int *) ;
 int ata_ioreq_cb ;
 int atapi_ioreq_cb ;
 int blockif_queuesz (int ) ;
 struct ahci_ioreq* calloc (size_t,int) ;
 int io_flist ;

__attribute__((used)) static void
pci_ahci_ioreq_init(struct ahci_port *pr)
{
 struct ahci_ioreq *vr;
 int i;

 pr->ioqsz = blockif_queuesz(pr->bctx);
 pr->ioreq = calloc(((size_t) pr->ioqsz), sizeof(struct ahci_ioreq));
 STAILQ_INIT(&pr->iofhd);




 for (i = 0; i < pr->ioqsz; i++) {
  vr = &pr->ioreq[i];
  vr->io_pr = pr;
  if (!pr->atapi)
   vr->io_req.br_callback = ata_ioreq_cb;
  else
   vr->io_req.br_callback = atapi_ioreq_cb;
  vr->io_req.br_param = vr;
  STAILQ_INSERT_TAIL(&pr->iofhd, vr, io_flist);
 }

 TAILQ_INIT(&pr->iobhd);
}
