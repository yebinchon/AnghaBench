
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* bp; int* start; int ct; scalar_t__ c; } ;
typedef TYPE_1__ opj_mqc_t ;


 int BYPASS_CT_INIT ;
 int assert (int) ;

void opj_mqc_bypass_init_enc(opj_mqc_t *mqc)
{



    assert(mqc->bp >= mqc->start);
    mqc->c = 0;





    mqc->ct = BYPASS_CT_INIT;


    assert(mqc->bp[-1] != 0xff);
}
