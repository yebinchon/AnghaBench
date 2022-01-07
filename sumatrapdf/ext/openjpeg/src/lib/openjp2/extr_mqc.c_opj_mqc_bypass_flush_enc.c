
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ct; int* bp; scalar_t__ c; } ;
typedef TYPE_1__ opj_mqc_t ;
typedef scalar_t__ OPJ_UINT32 ;
typedef unsigned int OPJ_BYTE ;
typedef scalar_t__ OPJ_BOOL ;


 int assert (int) ;

void opj_mqc_bypass_flush_enc(opj_mqc_t *mqc, OPJ_BOOL erterm)
{






    if (mqc->ct < 7 || (mqc->ct == 7 && (erterm || mqc->bp[-1] != 0xff))) {
        OPJ_BYTE bit_value = 0;




        while (mqc->ct > 0) {
            mqc->ct--;
            mqc->c += (OPJ_UINT32)(bit_value << mqc->ct);
            bit_value = (OPJ_BYTE)(1U - bit_value);
        }
        *mqc->bp = (OPJ_BYTE)mqc->c;

        mqc->bp++;
    } else if (mqc->ct == 7 && mqc->bp[-1] == 0xff) {

        assert(!erterm);
        mqc->bp --;
    } else if (mqc->ct == 8 && !erterm &&
               mqc->bp[-1] == 0x7f && mqc->bp[-2] == 0xff) {




        mqc->bp -= 2;
    }

    assert(mqc->bp[-1] != 0xff);
}
