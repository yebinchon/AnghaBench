
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ulBytesPerSector ;

void set_bytes_per_sector(unsigned long ulValue)
{
   ulBytesPerSector = ulValue;
   if ((ulBytesPerSector < 512) || (ulBytesPerSector > 65536))
      ulBytesPerSector = 512;
}
