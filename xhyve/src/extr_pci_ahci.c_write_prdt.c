
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct ahci_prdt_entry {int dbc; int dba; } ;
struct ahci_port {scalar_t__ cmd_lst; } ;
struct ahci_cmd_hdr {int prdtl; int prdbc; } ;


 int AHCI_CL_SIZE ;
 int DBCMASK ;
 int memcpy (int *,void*,int) ;
 int * paddr_guest2host (int ,int) ;

__attribute__((used)) static inline void
write_prdt(struct ahci_port *p, int slot, uint8_t *cfis,
  void *buf, int size)
{
 struct ahci_cmd_hdr *hdr;
 struct ahci_prdt_entry *prdt;
 void *from;
 int i, len;

 hdr = (struct ahci_cmd_hdr *)((void *) (p->cmd_lst + slot * AHCI_CL_SIZE));
 len = size;
 from = buf;
 prdt = (struct ahci_prdt_entry *)((void *) (cfis + 0x80));
 for (i = 0; i < hdr->prdtl && len; i++) {
  uint8_t *ptr;
  uint32_t dbcsz;
  int sublen;

  dbcsz = (prdt->dbc & DBCMASK) + 1;
  ptr = paddr_guest2host(prdt->dba, dbcsz);
  sublen = (len < ((int) dbcsz)) ? len : ((int) dbcsz);
  memcpy(ptr, from, sublen);
  len -= sublen;
  from = (void *) (((uintptr_t) from) + ((uintptr_t) sublen));
  prdt++;
 }
 hdr->prdbc = (uint32_t) (size - len);
}
