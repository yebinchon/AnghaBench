
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rl_dbuf; } ;
typedef TYPE_1__ redaction_list_t ;


 int dmu_buf_rele (int ,void*) ;

void
dsl_redaction_list_rele(redaction_list_t *rl, void *tag)
{
 dmu_buf_rele(rl->rl_dbuf, tag);
}
