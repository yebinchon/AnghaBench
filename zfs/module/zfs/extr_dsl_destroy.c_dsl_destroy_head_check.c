
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int dsl_pool_t ;
struct TYPE_2__ {int ddha_name; } ;
typedef TYPE_1__ dsl_destroy_head_arg_t ;
typedef int dsl_dataset_t ;
typedef int dmu_tx_t ;


 int FTAG ;
 int * dmu_tx_pool (int *) ;
 int dsl_dataset_hold (int *,int ,int ,int **) ;
 int dsl_dataset_rele (int *,int ) ;
 int dsl_destroy_head_check_impl (int *,int ) ;

int
dsl_destroy_head_check(void *arg, dmu_tx_t *tx)
{
 dsl_destroy_head_arg_t *ddha = arg;
 dsl_pool_t *dp = dmu_tx_pool(tx);
 dsl_dataset_t *ds;
 int error;

 error = dsl_dataset_hold(dp, ddha->ddha_name, FTAG, &ds);
 if (error != 0)
  return (error);

 error = dsl_destroy_head_check_impl(ds, 0);
 dsl_dataset_rele(ds, FTAG);
 return (error);
}
