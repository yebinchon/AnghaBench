
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ct; int* bp; scalar_t__ c; } ;
typedef TYPE_1__ opj_mqc_t ;
typedef int OPJ_UINT32 ;
typedef int OPJ_BYTE ;


 int BYPASS_CT_INIT ;

void opj_mqc_bypass_enc(opj_mqc_t *mqc, OPJ_UINT32 d)
{
    if (mqc->ct == BYPASS_CT_INIT) {
        mqc->ct = 8;
    }
    mqc->ct--;
    mqc->c = mqc->c + (d << mqc->ct);
    if (mqc->ct == 0) {
        *mqc->bp = (OPJ_BYTE)mqc->c;
        mqc->ct = 8;

        if (*mqc->bp == 0xff) {
            mqc->ct = 7;
        }
        mqc->bp++;
        mqc->c = 0;
    }
}
