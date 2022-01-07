
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint8_t ;
typedef unsigned int uint32_t ;


 unsigned int clz (unsigned int) ;

__attribute__((used)) static inline uint8_t vlc_ceil_log2( uint32_t val )
{
    uint8_t n = 31 - clz(val);
    if (((unsigned)1 << n) != val)
        n++;
    return n;
}
