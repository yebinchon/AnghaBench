
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;
typedef void* uint16_t ;
struct smbios_entry_point {void* echecksum; void* ichecksum; void* stnum; void* stlen; void* maxssize; } ;



__attribute__((used)) static void
smbios_ep_finalizer(struct smbios_entry_point *smbios_ep, uint16_t len,
    uint16_t num, uint16_t maxssize)
{
 uint8_t checksum;
 int i;

 smbios_ep->maxssize = maxssize;
 smbios_ep->stlen = len;
 smbios_ep->stnum = num;

 checksum = 0;
 for (i = 0x10; i < 0x1f; i++) {
  checksum -= ((uint8_t *)smbios_ep)[i];
 }
 smbios_ep->ichecksum = checksum;

 checksum = 0;
 for (i = 0; i < 0x1f; i++) {
  checksum -= ((uint8_t *)smbios_ep)[i];
 }
 smbios_ep->echecksum = checksum;
}
