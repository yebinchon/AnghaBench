
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ct; scalar_t__ c; } ;
typedef TYPE_1__ opj_mqc_t ;
typedef int OPJ_UINT32 ;
typedef int OPJ_BYTE ;


 int opj_mqc_init_dec_common (TYPE_1__*,int *,int ,int ) ;

void opj_mqc_raw_init_dec(opj_mqc_t *mqc, OPJ_BYTE *bp, OPJ_UINT32 len,
                          OPJ_UINT32 extra_writable_bytes)
{
    opj_mqc_init_dec_common(mqc, bp, len, extra_writable_bytes);
    mqc->c = 0;
    mqc->ct = 0;
}
