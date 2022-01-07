
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int dsl_pool_t ;
struct TYPE_3__ {int * dc_dp; } ;
typedef TYPE_1__ dmu_objset_find_ctx_t ;


 int FTAG ;
 int dmu_objset_find_dp_impl (TYPE_1__*) ;
 int dsl_pool_config_enter_prio (int *,int ) ;
 int dsl_pool_config_exit (int *,int ) ;

__attribute__((used)) static void
dmu_objset_find_dp_cb(void *arg)
{
 dmu_objset_find_ctx_t *dcp = arg;
 dsl_pool_t *dp = dcp->dc_dp;
 dsl_pool_config_enter_prio(dp, FTAG);

 dmu_objset_find_dp_impl(dcp);

 dsl_pool_config_exit(dp, FTAG);
}
