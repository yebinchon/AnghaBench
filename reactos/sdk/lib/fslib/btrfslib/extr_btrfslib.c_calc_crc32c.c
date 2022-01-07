
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef size_t ULONG ;


 int* crctable ;

__attribute__((used)) static uint32_t calc_crc32c(uint32_t seed, uint8_t* msg, ULONG msglen) {
    uint32_t rem;
    ULONG i;

    rem = seed;

    for (i = 0; i < msglen; i++) {
        rem = crctable[(rem ^ msg[i]) & 0xff] ^ (rem >> 8);
    }

    return rem;
}
