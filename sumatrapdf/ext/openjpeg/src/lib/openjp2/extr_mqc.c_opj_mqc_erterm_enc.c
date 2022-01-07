
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ct; int c; int* bp; } ;
typedef TYPE_1__ opj_mqc_t ;
typedef scalar_t__ OPJ_INT32 ;


 int opj_mqc_byteout (TYPE_1__*) ;

void opj_mqc_erterm_enc(opj_mqc_t *mqc)
{
    OPJ_INT32 k = (OPJ_INT32)(11 - mqc->ct + 1);

    while (k > 0) {
        mqc->c <<= mqc->ct;
        mqc->ct = 0;
        opj_mqc_byteout(mqc);
        k -= (OPJ_INT32)mqc->ct;
    }

    if (*mqc->bp != 0xff) {
        opj_mqc_byteout(mqc);
    }
}
