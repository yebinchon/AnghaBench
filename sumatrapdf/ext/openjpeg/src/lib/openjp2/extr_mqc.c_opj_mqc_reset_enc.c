
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int opj_mqc_t ;


 int T1_CTXNO_AGG ;
 int T1_CTXNO_UNI ;
 int T1_CTXNO_ZC ;
 int opj_mqc_resetstates (int *) ;
 int opj_mqc_setstate (int *,int ,int ,int) ;

void opj_mqc_reset_enc(opj_mqc_t *mqc)
{
    opj_mqc_resetstates(mqc);
    opj_mqc_setstate(mqc, T1_CTXNO_UNI, 0, 46);
    opj_mqc_setstate(mqc, T1_CTXNO_AGG, 0, 3);
    opj_mqc_setstate(mqc, T1_CTXNO_ZC, 0, 4);
}
