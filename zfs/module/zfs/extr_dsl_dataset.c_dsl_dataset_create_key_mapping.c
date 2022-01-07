
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ dd_crypto_obj; TYPE_1__* dd_pool; } ;
typedef TYPE_2__ dsl_dir_t ;
struct TYPE_9__ {int ds_key_mapping; TYPE_2__* ds_dir; } ;
typedef TYPE_3__ dsl_dataset_t ;
struct TYPE_7__ {int dp_spa; } ;


 int spa_keystore_create_mapping (int ,TYPE_3__*,TYPE_3__*,int *) ;

int
dsl_dataset_create_key_mapping(dsl_dataset_t *ds)
{
 dsl_dir_t *dd = ds->ds_dir;

 if (dd->dd_crypto_obj == 0)
  return (0);

 return (spa_keystore_create_mapping(dd->dd_pool->dp_spa,
     ds, ds, &ds->ds_key_mapping));
}
