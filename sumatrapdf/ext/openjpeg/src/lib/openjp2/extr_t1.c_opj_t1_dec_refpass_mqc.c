
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int w; int h; } ;
typedef TYPE_1__ opj_t1_t ;
typedef int OPJ_INT32 ;


 int opj_t1_dec_refpass_mqc_64x64 (TYPE_1__*,int ) ;
 int opj_t1_dec_refpass_mqc_generic (TYPE_1__*,int ) ;

__attribute__((used)) static void opj_t1_dec_refpass_mqc(
    opj_t1_t *t1,
    OPJ_INT32 bpno)
{
    if (t1->w == 64 && t1->h == 64) {
        opj_t1_dec_refpass_mqc_64x64(t1, bpno);
    } else {
        opj_t1_dec_refpass_mqc_generic(t1, bpno);
    }
}
