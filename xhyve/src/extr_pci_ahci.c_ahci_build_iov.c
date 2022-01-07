
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct blockif_req {int br_iovcnt; int br_resid; TYPE_1__* br_iov; } ;
struct ahci_prdt_entry {int dbc; scalar_t__ dba; } ;
struct ahci_port {int bctx; } ;
struct ahci_ioreq {unsigned int done; unsigned int len; int more; struct blockif_req io_req; } ;
struct TYPE_2__ {int iov_len; int iov_base; } ;


 int BLOCKIF_IOV_MAX ;
 int DBCMASK ;
 int assert (int) ;
 int blockif_sectsz (int ) ;
 int paddr_guest2host (scalar_t__,int) ;

__attribute__((used)) static void
ahci_build_iov(struct ahci_port *p, struct ahci_ioreq *aior,
    struct ahci_prdt_entry *prdt, uint16_t prdtl)
{
 struct blockif_req *breq = &aior->io_req;
 int i, j, skip, todo, left, extra;
 uint32_t dbcsz;


 skip = (int) aior->done;
 left = (int) (aior->len - aior->done);
 todo = 0;
 for (i = 0, j = 0; i < prdtl && j < BLOCKIF_IOV_MAX && left > 0;
     i++, prdt++) {
  dbcsz = (prdt->dbc & DBCMASK) + 1;

  if (dbcsz <= ((uint32_t) skip)) {
   skip -= dbcsz;
   continue;
  }
  dbcsz -= ((unsigned) skip);
  if (dbcsz > ((uint32_t) left)) {
   dbcsz = ((uint32_t) left);
  }
  breq->br_iov[j].iov_base =
   paddr_guest2host((prdt->dba + ((uint64_t) skip)), dbcsz);
  breq->br_iov[j].iov_len = dbcsz;
  todo += dbcsz;
  left -= dbcsz;
  skip = 0;
  j++;
 }


 if (j == BLOCKIF_IOV_MAX) {
  extra = todo % blockif_sectsz(p->bctx);
  todo -= extra;
  assert(todo > 0);
  while (extra > 0) {
   if (breq->br_iov[j - 1].iov_len > ((size_t) extra)) {
    breq->br_iov[j - 1].iov_len -= ((size_t) extra);
    break;
   }
   extra -= breq->br_iov[j - 1].iov_len;
   j--;
  }
 }

 breq->br_iovcnt = j;
 breq->br_resid = todo;
 aior->done += ((unsigned) todo);
 aior->more = (aior->done < aior->len && i < prdtl);
}
