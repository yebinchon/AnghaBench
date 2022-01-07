
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int a; int* bp; int ct; int* start; scalar_t__ end_of_byte_stream_counter; scalar_t__ c; } ;
typedef TYPE_1__ opj_mqc_t ;
typedef int OPJ_BYTE ;


 int assert (int) ;
 int opj_mqc_setcurctx (TYPE_1__*,int ) ;

void opj_mqc_init_enc(opj_mqc_t *mqc, OPJ_BYTE *bp)
{


    opj_mqc_setcurctx(mqc, 0);



    mqc->a = 0x8000;
    mqc->c = 0;


    mqc->bp = bp - 1;
    mqc->ct = 12;



    assert(*(mqc->bp) != 0xff);

    mqc->start = bp;
    mqc->end_of_byte_stream_counter = 0;
}
