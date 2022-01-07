
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint64_t ;
typedef int uint32_t ;


 int UINT32_MAX ;
 int* crc32tab ;

uint32_t
hash_crc32(const char *key, size_t key_length)
{
    uint64_t x;
    uint32_t crc = UINT32_MAX;

    for (x = 0; x < key_length; x++) {
        crc = (crc >> 8) ^ crc32tab[(crc ^ (uint64_t)key[x]) & 0xff];
    }

    return ((~crc) >> 16) & 0x7fff;
}
