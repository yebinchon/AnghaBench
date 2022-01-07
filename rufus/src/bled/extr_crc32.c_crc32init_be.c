
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CRCPOLY_BE ;
 int CRC_BE_BITS ;

__attribute__((used)) static void crc32init_be(uint32_t *crc32table_be)
{
 unsigned i, j;
 uint32_t crc = 0x80000000;

 for (i = 1; i < 1 << CRC_BE_BITS; i <<= 1) {
  crc = (crc << 1) ^ ((crc & 0x80000000) ? CRCPOLY_BE : 0);
  for (j = 0; j < i; j++)
   crc32table_be[i + j] = crc ^ crc32table_be[j];
 }
}
