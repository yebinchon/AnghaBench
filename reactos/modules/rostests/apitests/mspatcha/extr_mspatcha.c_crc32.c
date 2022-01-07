
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int* crc_32_tab ;

unsigned int crc32(unsigned int seed, unsigned char* msg, unsigned int msglen)
{
    unsigned int rem = seed;
    unsigned int i;

    for (i = 0; i < msglen; i++)
    {
        rem = crc_32_tab[(rem ^ msg[i]) & 0xff] ^ (rem >> 8);
    }

    return rem;
}
