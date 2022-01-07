
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int stb_uint ;
struct TYPE_3__ {unsigned int multiplicand; unsigned int* table; int b_mask; int table_mask; int* large_bmap; int* small_bmap; } ;
typedef TYPE_1__ stb_perfect ;



int stb_perfect_hash(stb_perfect *p, unsigned int x)
{
   stb_uint m = x * p->multiplicand;
   stb_uint y = x >> 16;
   stb_uint bv = (m >> 24) + y;
   stb_uint av = (m + y) >> 12;
   if (p->table == ((void*)0)) return -1;
   bv &= p->b_mask;
   av &= p->table_mask;
   if (p->large_bmap)
      av ^= p->large_bmap[bv];
   else
      av ^= p->small_bmap[bv];
   return p->table[av] == x ? av : -1;
}
