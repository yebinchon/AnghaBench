
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int spa_t ;
struct TYPE_5__ {int dp_meta_objset; int dp_meta_rootbp; } ;
typedef TYPE_1__ dsl_pool_t ;


 int dmu_objset_open_impl (int *,int *,int *,int *) ;
 int dsl_pool_close (TYPE_1__*) ;
 TYPE_1__* dsl_pool_open_impl (int *,int ) ;

int
dsl_pool_init(spa_t *spa, uint64_t txg, dsl_pool_t **dpp)
{
 int err;
 dsl_pool_t *dp = dsl_pool_open_impl(spa, txg);







 *dpp = dp;

 err = dmu_objset_open_impl(spa, ((void*)0), &dp->dp_meta_rootbp,
     &dp->dp_meta_objset);
 if (err != 0) {
  dsl_pool_close(dp);
  *dpp = ((void*)0);
 }

 return (err);
}
