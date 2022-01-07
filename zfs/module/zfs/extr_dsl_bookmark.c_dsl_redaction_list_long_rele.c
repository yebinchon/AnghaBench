
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rl_longholds; } ;
typedef TYPE_1__ redaction_list_t ;


 int zfs_refcount_remove (int *,void*) ;

void
dsl_redaction_list_long_rele(redaction_list_t *rl, void *tag)
{
 (void) zfs_refcount_remove(&rl->rl_longholds, tag);
}
