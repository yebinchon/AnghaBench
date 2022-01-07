
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CRC32C_POLY_LE ;
 int crc32_le_generic (int ,unsigned char const*,size_t,int ,int ) ;
 int crc32ctable_le ;

uint32_t ext2fs_crc32c_le(uint32_t crc, unsigned char const *p, size_t len)
{
 return crc32_le_generic(crc, p, len, crc32ctable_le, CRC32C_POLY_LE);
}
