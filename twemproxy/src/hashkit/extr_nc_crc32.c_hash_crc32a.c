
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int uint32_t ;


 int* crc32tab ;

uint32_t
hash_crc32a(const char *key, size_t key_length)
{
    const uint8_t *p = key;
    uint32_t crc;

    crc = ~0U;
    while (key_length--) {
        crc = crc32tab[(crc ^ *p++) & 0xFF] ^ (crc >> 8);
    }

    return crc ^ ~0U;
}
