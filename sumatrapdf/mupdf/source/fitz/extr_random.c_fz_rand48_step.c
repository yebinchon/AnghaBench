
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint64_t ;
typedef unsigned int uint16_t ;



__attribute__((used)) static uint64_t fz_rand48_step(uint16_t *xi, uint16_t *lc)
{
 uint64_t a, x;
 x = xi[0] | (xi[1]+0U)<<16 | (xi[2]+0ULL)<<32;
 a = lc[0] | (lc[1]+0U)<<16 | (lc[2]+0ULL)<<32;
 x = a*x + lc[3];
 xi[0] = x;
 xi[1] = x>>16;
 xi[2] = x>>32;
 return x & 0xffffffffffffull;
}
