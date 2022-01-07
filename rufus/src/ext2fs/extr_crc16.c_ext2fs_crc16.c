
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int crc16_t ;


 int* crc16_table ;

crc16_t ext2fs_crc16(crc16_t crc, const void *buffer, unsigned int len)
{
 const unsigned char *cp = buffer;

 while (len--)






  crc = (((crc >> 8) & 0xffU) ^
         crc16_table[(crc ^ *cp++) & 0xffU]) & 0x0000ffffU;
 return crc;
}
