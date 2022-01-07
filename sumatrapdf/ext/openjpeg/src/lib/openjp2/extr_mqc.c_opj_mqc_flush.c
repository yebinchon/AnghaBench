
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* bp; int ct; int c; } ;
typedef TYPE_1__ opj_mqc_t ;


 int opj_mqc_byteout (TYPE_1__*) ;
 int opj_mqc_setbits (TYPE_1__*) ;

void opj_mqc_flush(opj_mqc_t *mqc)
{


    opj_mqc_setbits(mqc);
    mqc->c <<= mqc->ct;
    opj_mqc_byteout(mqc);
    mqc->c <<= mqc->ct;
    opj_mqc_byteout(mqc);


    if (*mqc->bp != 0xff) {

        mqc->bp++;
    }
}
