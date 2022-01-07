
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



uint32_t
hash_murmur(const char *key, size_t length)
{





    const unsigned int m = 0x5bd1e995;
    const uint32_t seed = (0xdeadbeef * (uint32_t)length);
    const int r = 24;




    uint32_t h = seed ^ (uint32_t)length;



    const unsigned char * data = (const unsigned char *)key;

    while (length >= 4) {
        unsigned int k = *(unsigned int *)data;

        k *= m;
        k ^= k >> r;
        k *= m;

        h *= m;
        h ^= k;

        data += 4;
        length -= 4;
    }



    switch(length) {
    case 3:
        h ^= ((uint32_t)data[2]) << 16;

    case 2:
        h ^= ((uint32_t)data[1]) << 8;

    case 1:
        h ^= data[0];
        h *= m;

    default:
        break;
    };






    h ^= h >> 13;
    h *= m;
    h ^= h >> 15;

    return h;
}
