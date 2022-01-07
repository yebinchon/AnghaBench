
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int range_low; int range_high; } ;
typedef TYPE_1__ stb_arith ;


 int stb__arith_putbyte (TYPE_1__*,int) ;

__attribute__((used)) static void stb__renorm_encoder(stb_arith *a)
{
   stb__arith_putbyte(a, a->range_low >> 24);
   a->range_low <<= 8;
   a->range_high = (a->range_high << 8) | 0xff;
}
