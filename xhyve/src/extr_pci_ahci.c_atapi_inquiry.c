
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct ahci_port {int sense_key; int asc; } ;
typedef int buf ;


 int ATA_I_CMD ;
 int ATA_I_IN ;
 int ATA_SENSE_ILLEGAL_REQUEST ;
 int ATA_S_DSC ;
 int ATA_S_ERROR ;
 int ATA_S_READY ;
 int ahci_write_fis_d2h (struct ahci_port*,int,int*,int) ;
 int atapi_string (int*,char*,int) ;
 int write_prdt (struct ahci_port*,int,int*,int*,int) ;

__attribute__((used)) static void
atapi_inquiry(struct ahci_port *p, int slot, uint8_t *cfis)
{
 uint8_t buf[36];
 uint8_t *acmd;
 int len;
 uint32_t tfd;

 acmd = cfis + 0x40;

 if (acmd[1] & 1) {
  if (acmd[2] == 0) {
   buf[0] = 0x05;
   buf[1] = 0;
   buf[2] = 0;
   buf[3] = 1;
   buf[4] = 0;
   len = 4 + buf[3];
  } else {
   p->sense_key = ATA_SENSE_ILLEGAL_REQUEST;
   p->asc = 0x24;
   tfd = (uint32_t) ((p->sense_key << 12) | ATA_S_READY | ATA_S_ERROR);
   cfis[4] = (cfis[4] & ~7) | ATA_I_CMD | ATA_I_IN;
   ahci_write_fis_d2h(p, slot, cfis, tfd);
   return;
  }
 } else {
  buf[0] = 0x05;
  buf[1] = 0x80;
  buf[2] = 0x00;
  buf[3] = 0x21;
  buf[4] = 31;
  buf[5] = 0;
  buf[6] = 0;
  buf[7] = 0;
  atapi_string(buf + 8, "BHYVE", 8);
  atapi_string(buf + 16, "BHYVE DVD-ROM", 16);
  atapi_string(buf + 32, "001", 4);
  len = sizeof(buf);
 }

 if (len > acmd[4])
  len = acmd[4];
 cfis[4] = (cfis[4] & ~7) | ATA_I_CMD | ATA_I_IN;
 write_prdt(p, slot, cfis, buf, len);
 ahci_write_fis_d2h(p, slot, cfis, ATA_S_READY | ATA_S_DSC);
}
