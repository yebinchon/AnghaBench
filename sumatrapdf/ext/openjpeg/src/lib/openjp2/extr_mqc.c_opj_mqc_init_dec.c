
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int c; int* bp; int ct; int a; scalar_t__ end_of_byte_stream_counter; } ;
typedef TYPE_1__ opj_mqc_t ;
typedef int OPJ_UINT32 ;
typedef int OPJ_BYTE ;


 int opj_mqc_bytein (TYPE_1__*) ;
 int opj_mqc_init_dec_common (TYPE_1__*,int *,int,int) ;
 int opj_mqc_setcurctx (TYPE_1__*,int ) ;

void opj_mqc_init_dec(opj_mqc_t *mqc, OPJ_BYTE *bp, OPJ_UINT32 len,
                      OPJ_UINT32 extra_writable_bytes)
{





    opj_mqc_init_dec_common(mqc, bp, len, extra_writable_bytes);
    opj_mqc_setcurctx(mqc, 0);
    mqc->end_of_byte_stream_counter = 0;
    if (len == 0) {
        mqc->c = 0xff << 16;
    } else {
        mqc->c = (OPJ_UINT32)(*mqc->bp << 16);
    }

    opj_mqc_bytein(mqc);
    mqc->c <<= 7;
    mqc->ct -= 7;
    mqc->a = 0x8000;
}
