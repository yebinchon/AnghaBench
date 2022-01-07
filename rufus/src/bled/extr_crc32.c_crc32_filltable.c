
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CRC_LE_BITS ;
 int crc32init_be (int *) ;
 int crc32init_le (int *) ;
 int * malloc (int) ;

uint32_t* crc32_filltable(uint32_t *crc_table, int endian)
{

 if (!crc_table)
  crc_table = malloc((1 << CRC_LE_BITS) * sizeof(uint32_t));
 if (crc_table) {
  if (endian)
   crc32init_be(crc_table);
  else
   crc32init_le(crc_table);
 }
 return crc_table;
}
