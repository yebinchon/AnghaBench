
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int opj_mqc_t ;
typedef int OPJ_UINT32 ;


 int opj_mqc_encode (int *,int) ;
 int opj_mqc_setcurctx (int *,int) ;

void opj_mqc_segmark_enc(opj_mqc_t *mqc)
{
    OPJ_UINT32 i;
    opj_mqc_setcurctx(mqc, 18);

    for (i = 1; i < 5; i++) {
        opj_mqc_encode(mqc, i % 2);
    }
}
