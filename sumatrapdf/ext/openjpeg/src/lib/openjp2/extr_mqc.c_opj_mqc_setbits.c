
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ c; scalar_t__ a; } ;
typedef TYPE_1__ opj_mqc_t ;
typedef scalar_t__ OPJ_UINT32 ;



__attribute__((used)) static void opj_mqc_setbits(opj_mqc_t *mqc)
{
    OPJ_UINT32 tempc = mqc->c + mqc->a;
    mqc->c |= 0xffff;
    if (mqc->c >= tempc) {
        mqc->c -= 0x8000;
    }
}
