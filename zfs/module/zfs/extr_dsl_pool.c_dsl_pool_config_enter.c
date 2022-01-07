
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dp_config_rwlock; } ;
typedef TYPE_1__ dsl_pool_t ;


 int ASSERT (int) ;
 int RW_READER ;
 int rrw_enter (int *,int ,void*) ;
 int rrw_held (int *,int ) ;

void
dsl_pool_config_enter(dsl_pool_t *dp, void *tag)
{
 ASSERT(!rrw_held(&dp->dp_config_rwlock, RW_READER));
 rrw_enter(&dp->dp_config_rwlock, RW_READER, tag);
}
