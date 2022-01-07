
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CRCPOLY_BE ;
 int crc32_be_generic (int ,unsigned char const*,size_t,int ,int ) ;
 int crc32table_be ;

uint32_t ext2fs_crc32_be(uint32_t crc, unsigned char const *p, size_t len)
{
 return crc32_be_generic(crc, p, len, crc32table_be, CRCPOLY_BE);
}
