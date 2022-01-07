
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int rand () ;

void rand_bytes(uint8_t *b, size_t blen)
{
    size_t i;

    for (i = 0; i < blen; i++) {
        b[i] = rand();
    }
}
