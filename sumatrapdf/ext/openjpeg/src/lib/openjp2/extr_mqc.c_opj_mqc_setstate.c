
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ** ctxs; } ;
typedef TYPE_1__ opj_mqc_t ;
typedef size_t OPJ_UINT32 ;
typedef int OPJ_INT32 ;


 int * mqc_states ;

void opj_mqc_setstate(opj_mqc_t *mqc, OPJ_UINT32 ctxno, OPJ_UINT32 msb,
                      OPJ_INT32 prob)
{
    mqc->ctxs[ctxno] = &mqc_states[msb + (OPJ_UINT32)(prob << 1)];
}
