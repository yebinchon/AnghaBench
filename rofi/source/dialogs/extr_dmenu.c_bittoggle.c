
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline void bittoggle ( uint32_t *array, unsigned int index )
{
    uint32_t bit = index % 32;
    uint32_t *v = &array[index / 32];
    *v ^= 1 << bit;
}
