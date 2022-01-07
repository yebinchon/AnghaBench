
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pending_ffs; int output; int buffered_u8; } ;
typedef TYPE_1__ stb_arith ;


 int assert (int) ;
 int stb_putc (int ,int ) ;

__attribute__((used)) static void stb__arith_carry(stb_arith *a)
{
   int i;
   assert(a->pending_ffs != -1);
   stb_putc(a->output, a->buffered_u8);
   for (i=0; i < a->pending_ffs; ++i)
      stb_putc(a->output, 0);
}
