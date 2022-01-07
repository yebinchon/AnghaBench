
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint64_t ;
typedef int uint32_t ;


 int* crc16tab ;

uint32_t
hash_crc16(const char *key, size_t key_length)
{
    uint64_t x;
    uint32_t crc = 0;

    for (x=0; x < key_length; x++) {
        crc = (crc << 8) ^ crc16tab[((crc >> 8) ^ *key++) & 0x00ff];
    }

    return crc;
}
