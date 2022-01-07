
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ct; int c; int a; int curctx; } ;
struct TYPE_5__ {scalar_t__ w; TYPE_2__ mqc; } ;
typedef TYPE_1__ opj_t1_t ;
typedef TYPE_2__ opj_mqc_t ;
typedef int opj_flag_t ;
typedef int OPJ_UINT32 ;
typedef int OPJ_INT32 ;


 int OPJ_FALSE ;
 int OPJ_TRUE ;
 int opj_t1_dec_clnpass_step_macro (int ,int ,int ,int *,scalar_t__,int *,int ,int ,TYPE_2__*,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void opj_t1_dec_clnpass_step(
    opj_t1_t *t1,
    opj_flag_t *flagsp,
    OPJ_INT32 *datap,
    OPJ_INT32 oneplushalf,
    OPJ_UINT32 ci,
    OPJ_UINT32 vsc)
{
    OPJ_UINT32 v;

    opj_mqc_t *mqc = &(t1->mqc);
    opj_t1_dec_clnpass_step_macro(OPJ_TRUE, OPJ_FALSE,
                                  *flagsp, flagsp, t1->w + 2U, datap,
                                  0, ci, mqc, mqc->curctx,
                                  v, mqc->a, mqc->c, mqc->ct, oneplushalf, vsc);
}
