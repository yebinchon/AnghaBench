
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ w; int h; } ;
typedef TYPE_1__ opj_t1_t ;
typedef int OPJ_INT32 ;


 int opj_t1_dec_refpass_mqc_internal (TYPE_1__*,int ,scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static void opj_t1_dec_refpass_mqc_generic(
    opj_t1_t *t1,
    OPJ_INT32 bpno)
{
    opj_t1_dec_refpass_mqc_internal(t1, bpno, t1->w, t1->h, t1->w + 2U);
}
