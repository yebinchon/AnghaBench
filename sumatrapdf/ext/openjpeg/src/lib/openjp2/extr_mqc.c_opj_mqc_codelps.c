
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ a; TYPE_1__** curctx; int c; } ;
typedef TYPE_2__ opj_mqc_t ;
struct TYPE_5__ {scalar_t__ qeval; struct TYPE_5__* nlps; } ;


 int opj_mqc_renorme (TYPE_2__*) ;

__attribute__((used)) static void opj_mqc_codelps(opj_mqc_t *mqc)
{
    mqc->a -= (*mqc->curctx)->qeval;
    if (mqc->a < (*mqc->curctx)->qeval) {
        mqc->c += (*mqc->curctx)->qeval;
    } else {
        mqc->a = (*mqc->curctx)->qeval;
    }
    *mqc->curctx = (*mqc->curctx)->nlps;
    opj_mqc_renorme(mqc);
}
