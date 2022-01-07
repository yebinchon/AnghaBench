
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
 int be16dec (int*) ;
 int be16enc (int*,int) ;
 int memset (int*,int ,int) ;
 int write_prdt (struct ahci_port*,int,int*,int*,int) ;

__attribute__((used)) static void
atapi_get_event_status_notification(struct ahci_port *p, int slot,
    uint8_t *cfis)
{
 uint8_t *acmd;
 uint32_t tfd;

 acmd = cfis + 0x40;


 if (!(acmd[1] & 1)) {
  p->sense_key = ATA_SENSE_ILLEGAL_REQUEST;
  p->asc = 0x24;
  tfd = (uint32_t) ((p->sense_key << 12) | ATA_S_READY | ATA_S_ERROR);
 } else {
  uint8_t buf[8];
  int len;

  len = be16dec(acmd + 7);
  if (((size_t) len) > sizeof(buf)) {
   len = sizeof(buf);
  }

  memset(buf, 0, sizeof(buf));
  be16enc(buf, 8 - 2);
  buf[2] = 0x04;
  buf[3] = 0x10;
  buf[5] = 0x02;
  write_prdt(p, slot, cfis, buf, len);
  tfd = ATA_S_READY | ATA_S_DSC;
 }
 cfis[4] = (cfis[4] & ~7) | ATA_I_CMD | ATA_I_IN;
 ahci_write_fis_d2h(p, slot, cfis, tfd);
}
