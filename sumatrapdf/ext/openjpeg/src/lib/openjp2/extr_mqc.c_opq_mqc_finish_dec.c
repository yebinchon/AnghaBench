
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int backup; int end; } ;
typedef TYPE_1__ opj_mqc_t ;


 int OPJ_COMMON_CBLK_DATA_EXTRA ;
 int memcpy (int ,int ,int ) ;

void opq_mqc_finish_dec(opj_mqc_t *mqc)
{

    memcpy(mqc->end, mqc->backup, OPJ_COMMON_CBLK_DATA_EXTRA);
}
