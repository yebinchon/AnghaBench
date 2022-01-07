
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct blockif_req {scalar_t__ br_offset; } ;
struct ahci_prdt_entry {int dummy; } ;
struct ahci_port {int pending; int bctx; int iobhd; int iofhd; scalar_t__ cmd_lst; } ;
struct ahci_ioreq {int* cfis; int slot; struct blockif_req io_req; scalar_t__ done; scalar_t__ len; } ;
struct ahci_cmd_hdr {int prdtl; } ;
typedef scalar_t__ off_t ;


 int AHCI_CL_SIZE ;
 int ATA_READ48 ;
 int ATA_READ_DMA48 ;
 int ATA_READ_FPDMA_QUEUED ;
 int ATA_READ_MUL48 ;
 int ATA_WRITE ;
 int ATA_WRITE48 ;
 int ATA_WRITE_DMA ;
 int ATA_WRITE_DMA48 ;
 int ATA_WRITE_FPDMA_QUEUED ;
 int ATA_WRITE_MUL ;
 int ATA_WRITE_MUL48 ;
 struct ahci_ioreq* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int TAILQ_INSERT_HEAD (int *,struct ahci_ioreq*,int ) ;
 int ahci_build_iov (struct ahci_port*,struct ahci_ioreq*,struct ahci_prdt_entry*,int ) ;
 int ahci_write_fis_d2h_ncq (struct ahci_port*,int) ;
 int assert (int) ;
 int blockif_read (int ,struct blockif_req*) ;
 scalar_t__ blockif_sectsz (int ) ;
 int blockif_write (int ,struct blockif_req*) ;
 int io_blist ;
 int io_flist ;

__attribute__((used)) static void
ahci_handle_rw(struct ahci_port *p, int slot, uint8_t *cfis, uint32_t done)
{
 struct ahci_ioreq *aior;
 struct blockif_req *breq;
 struct ahci_prdt_entry *prdt;
 struct ahci_cmd_hdr *hdr;
 uint64_t lba;
 uint32_t len;
 int err, first, ncq, readop;

 prdt = (struct ahci_prdt_entry *)((void *) (cfis + 0x80));
 hdr = (struct ahci_cmd_hdr *)((void *) (p->cmd_lst + slot * AHCI_CL_SIZE));
 ncq = 0;
 readop = 1;
 first = (done == 0);

 if (cfis[2] == ATA_WRITE || cfis[2] == ATA_WRITE48 ||
     cfis[2] == ATA_WRITE_MUL || cfis[2] == ATA_WRITE_MUL48 ||
     cfis[2] == ATA_WRITE_DMA || cfis[2] == ATA_WRITE_DMA48 ||
     cfis[2] == ATA_WRITE_FPDMA_QUEUED)
  readop = 0;

 if (cfis[2] == ATA_WRITE_FPDMA_QUEUED ||
     cfis[2] == ATA_READ_FPDMA_QUEUED) {
  lba = ((uint64_t)cfis[10] << 40) |
   ((uint64_t)cfis[9] << 32) |
   ((uint64_t)cfis[8] << 24) |
   ((uint64_t)cfis[6] << 16) |
   ((uint64_t)cfis[5] << 8) |
   cfis[4];
  len = (uint32_t) (cfis[11] << 8 | cfis[3]);
  if (!len)
   len = 65536;
  ncq = 1;
 } else if (cfis[2] == ATA_READ48 || cfis[2] == ATA_WRITE48 ||
     cfis[2] == ATA_READ_MUL48 || cfis[2] == ATA_WRITE_MUL48 ||
     cfis[2] == ATA_READ_DMA48 || cfis[2] == ATA_WRITE_DMA48) {
  lba = ((uint64_t)cfis[10] << 40) |
   ((uint64_t)cfis[9] << 32) |
   ((uint64_t)cfis[8] << 24) |
   ((uint64_t)cfis[6] << 16) |
   ((uint64_t)cfis[5] << 8) |
   cfis[4];
  len = (uint32_t) (cfis[13] << 8 | cfis[12]);
  if (!len)
   len = 65536;
 } else {
  lba = (uint64_t) (((cfis[7] & 0xf) << 24) | (cfis[6] << 16) |
   (cfis[5] << 8) | cfis[4]);
  len = cfis[12];
  if (!len)
   len = 256;
 }
 lba *= (uint64_t) blockif_sectsz(p->bctx);
 len *= (uint32_t) blockif_sectsz(p->bctx);


 aior = STAILQ_FIRST(&p->iofhd);
 assert(aior != ((void*)0));
 STAILQ_REMOVE_HEAD(&p->iofhd, io_flist);

 aior->cfis = cfis;
 aior->slot = slot;
 aior->len = len;
 aior->done = done;
 breq = &aior->io_req;
 breq->br_offset = (off_t) (lba + done);
 ahci_build_iov(p, aior, prdt, hdr->prdtl);


 p->pending |= 1 << slot;


 TAILQ_INSERT_HEAD(&p->iobhd, aior, io_blist);

 if (ncq && first)
  ahci_write_fis_d2h_ncq(p, slot);

 if (readop)
  err = blockif_read(p->bctx, breq);
 else
  err = blockif_write(p->bctx, breq);
 assert(err == 0);
}
