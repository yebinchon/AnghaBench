
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int zsda_name; } ;
typedef TYPE_1__ zvol_set_prop_int_arg_t ;
typedef int dsl_pool_t ;
typedef int dsl_dir_t ;
typedef int dmu_tx_t ;


 int FTAG ;
 int * dmu_tx_pool (int *) ;
 int dsl_dir_hold (int *,int ,int ,int **,int *) ;
 int dsl_dir_rele (int *,int ) ;

__attribute__((used)) static int
zvol_set_snapdev_check(void *arg, dmu_tx_t *tx)
{
 zvol_set_prop_int_arg_t *zsda = arg;
 dsl_pool_t *dp = dmu_tx_pool(tx);
 dsl_dir_t *dd;
 int error;

 error = dsl_dir_hold(dp, zsda->zsda_name, FTAG, &dd, ((void*)0));
 if (error != 0)
  return (error);

 dsl_dir_rele(dd, FTAG);

 return (error);
}
