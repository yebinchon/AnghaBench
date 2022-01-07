
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rl_longholds; } ;
typedef TYPE_1__ redaction_list_t ;
typedef int dsl_pool_t ;


 int ASSERT (int ) ;
 int dsl_pool_config_held (int *) ;
 int zfs_refcount_add (int *,void*) ;

void
dsl_redaction_list_long_hold(dsl_pool_t *dp, redaction_list_t *rl, void *tag)
{
 ASSERT(dsl_pool_config_held(dp));
 (void) zfs_refcount_add(&rl->rl_longholds, tag);
}
