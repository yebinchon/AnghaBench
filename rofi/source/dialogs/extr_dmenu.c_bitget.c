
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline unsigned int bitget ( uint32_t *array, unsigned int index )
{
    uint32_t bit = index % 32;
    uint32_t val = array[index / 32];
    return ( val >> bit ) & 1;
}
