
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int A; scalar_t__ CT; int C; } ;
typedef TYPE_1__ Jbig2ArithState ;


 int jbig2_arith_bytein (TYPE_1__*) ;

__attribute__((used)) static void
jbig2_arith_renormd(Jbig2ArithState *as)
{

    do {
        if (as->CT == 0)
            jbig2_arith_bytein(as);
        as->A <<= 1;
        as->C <<= 1;
        as->CT--;
    } while ((as->A & 0x8000) == 0);
}
