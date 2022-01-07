
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint32_t ;


 unsigned long* crc_tab ;

uint32_t chksum_crc32 (unsigned char *block, unsigned int length)
{
 register unsigned long crc;
 unsigned long i;

 crc = 0xFFFFFFFF;
 for (i = 0; i < length; i++)
 {
  crc = ((crc >> 8) & 0x00FFFFFF) ^ crc_tab[(crc ^ *block++) & 0xFF];
 }
 return (crc ^ 0xFFFFFFFF);
}
