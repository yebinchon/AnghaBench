
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mqc; } ;
typedef TYPE_1__ opj_t1_t ;
typedef int opj_mqc_t ;
typedef int OPJ_UINT32 ;
typedef int OPJ_INT32 ;


 int J2K_CCP_CBLKSTY_SEGSYM ;
 int T1_CTXNO_UNI ;
 int opj_mqc_decode (int,int *) ;
 int opj_mqc_setcurctx (int *,int ) ;

__attribute__((used)) static void opj_t1_dec_clnpass_check_segsym(opj_t1_t *t1, OPJ_INT32 cblksty)
{
    if (cblksty & J2K_CCP_CBLKSTY_SEGSYM) {
        opj_mqc_t* mqc = &(t1->mqc);
        OPJ_UINT32 v, v2;
        opj_mqc_setcurctx(mqc, T1_CTXNO_UNI);
        opj_mqc_decode(v, mqc);
        opj_mqc_decode(v2, mqc);
        v = (v << 1) | v2;
        opj_mqc_decode(v2, mqc);
        v = (v << 1) | v2;
        opj_mqc_decode(v2, mqc);
        v = (v << 1) | v2;





    }
}
