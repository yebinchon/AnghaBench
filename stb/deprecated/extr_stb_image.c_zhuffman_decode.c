
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int* fast; int* size; int* value; int* maxcode; int* firstcode; int* firstsymbol; } ;
typedef TYPE_1__ zhuffman ;
struct TYPE_7__ {int num_bits; size_t code_buffer; } ;
typedef TYPE_2__ zbuf ;


 int ZFAST_BITS ;
 size_t ZFAST_MASK ;
 int assert (int) ;
 int bit_reverse (int,int) ;
 int fill_bits (TYPE_2__*) ;

__attribute__((used)) static int zhuffman_decode(zbuf *a, zhuffman *z)
{
   int b,s,k;
   if (a->num_bits < 16) fill_bits(a);
   b = z->fast[a->code_buffer & ZFAST_MASK];
   if (b < 0xffff) {
      s = z->size[b];
      a->code_buffer >>= s;
      a->num_bits -= s;
      return z->value[b];
   }



   k = bit_reverse(a->code_buffer, 16);
   for (s=ZFAST_BITS+1; ; ++s)
      if (k < z->maxcode[s])
         break;
   if (s == 16) return -1;

   b = (k >> (16-s)) - z->firstcode[s] + z->firstsymbol[s];
   assert(z->size[b] == s);
   a->code_buffer >>= s;
   a->num_bits -= s;
   return z->value[b];
}
