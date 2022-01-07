
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dp_config_rwlock; } ;
typedef TYPE_1__ dsl_pool_t ;


 int rrw_exit (int *,void*) ;

void
dsl_pool_config_exit(dsl_pool_t *dp, void *tag)
{
 rrw_exit(&dp->dp_config_rwlock, tag);
}
