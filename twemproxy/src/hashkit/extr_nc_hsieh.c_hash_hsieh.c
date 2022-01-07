
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int get16bits (char const*) ;

uint32_t
hash_hsieh(const char *key, size_t key_length)
{
    uint32_t hash = 0, tmp;
    int rem;

    if (key_length <= 0 || key == ((void*)0)) {
        return 0;
    }

    rem = key_length & 3;
    key_length >>= 2;


    for (;key_length > 0; key_length--) {
        hash += get16bits (key);
        tmp = (get16bits (key+2) << 11) ^ hash;
        hash = (hash << 16) ^ tmp;
        key += 2*sizeof (uint16_t);
        hash += hash >> 11;
    }


    switch (rem) {
    case 3:
        hash += get16bits (key);
        hash ^= hash << 16;
        hash ^= (uint32_t)key[sizeof (uint16_t)] << 18;
        hash += hash >> 11;
        break;

    case 2:
        hash += get16bits (key);
        hash ^= hash << 11;
        hash += hash >> 17;
        break;

    case 1:
        hash += (unsigned char)(*key);
        hash ^= hash << 10;
        hash += hash >> 1;

    default:
        break;
    }


    hash ^= hash << 3;
    hash += hash >> 5;
    hash ^= hash << 4;
    hash += hash >> 17;
    hash ^= hash << 25;
    hash += hash >> 6;

    return hash;
}
