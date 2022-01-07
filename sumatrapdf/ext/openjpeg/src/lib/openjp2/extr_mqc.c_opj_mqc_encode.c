
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__** curctx; } ;
typedef TYPE_2__ opj_mqc_t ;
struct TYPE_6__ {scalar_t__ mps; } ;
typedef scalar_t__ OPJ_UINT32 ;


 int opj_mqc_codelps (TYPE_2__*) ;
 int opj_mqc_codemps (TYPE_2__*) ;

void opj_mqc_encode(opj_mqc_t *mqc, OPJ_UINT32 d)
{
    if ((*mqc->curctx)->mps == d) {
        opj_mqc_codemps(mqc);
    } else {
        opj_mqc_codelps(mqc);
    }
}
