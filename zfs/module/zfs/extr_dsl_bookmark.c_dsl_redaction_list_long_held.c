
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rl_longholds; } ;
typedef TYPE_1__ redaction_list_t ;
typedef int boolean_t ;


 int zfs_refcount_is_zero (int *) ;

boolean_t
dsl_redaction_list_long_held(redaction_list_t *rl)
{
 return (!zfs_refcount_is_zero(&rl->rl_longholds));
}
