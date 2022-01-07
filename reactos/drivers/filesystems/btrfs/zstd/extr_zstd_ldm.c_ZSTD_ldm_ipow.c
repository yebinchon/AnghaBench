
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U64 ;



__attribute__((used)) static U64 ZSTD_ldm_ipow(U64 base, U64 exp)
{
    U64 ret = 1;
    while (exp) {
        if (exp & 1) { ret *= base; }
        exp >>= 1;
        base *= base;
    }
    return ret;
}
