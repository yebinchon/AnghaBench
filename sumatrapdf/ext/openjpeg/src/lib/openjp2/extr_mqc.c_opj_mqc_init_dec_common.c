
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* start; int* end; int* bp; int backup; } ;
typedef TYPE_1__ opj_mqc_t ;
typedef scalar_t__ OPJ_UINT32 ;
typedef int OPJ_BYTE ;


 scalar_t__ OPJ_COMMON_CBLK_DATA_EXTRA ;
 int assert (int) ;
 int memcpy (int ,int*,scalar_t__) ;

__attribute__((used)) static void opj_mqc_init_dec_common(opj_mqc_t *mqc,
                                    OPJ_BYTE *bp,
                                    OPJ_UINT32 len,
                                    OPJ_UINT32 extra_writable_bytes)
{
    (void)extra_writable_bytes;

    assert(extra_writable_bytes >= OPJ_COMMON_CBLK_DATA_EXTRA);
    mqc->start = bp;
    mqc->end = bp + len;




    memcpy(mqc->backup, mqc->end, OPJ_COMMON_CBLK_DATA_EXTRA);
    mqc->end[0] = 0xFF;
    mqc->end[1] = 0xFF;
    mqc->bp = bp;
}
