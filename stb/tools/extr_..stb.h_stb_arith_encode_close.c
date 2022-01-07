
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int stbfile ;
struct TYPE_5__ {int range_low; int * output; } ;
typedef TYPE_1__ stb_arith ;


 int stb__arith_flush (TYPE_1__*) ;
 int stb__arith_putbyte (TYPE_1__*,int) ;

stbfile *stb_arith_encode_close(stb_arith *a)
{

   stb__arith_putbyte(a, a->range_low >> 24);
   stb__arith_putbyte(a, a->range_low >> 16);
   stb__arith_putbyte(a, a->range_low >> 8);
   stb__arith_putbyte(a, a->range_low >> 0);
   stb__arith_flush(a);
   return a->output;
}
