
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t spa_feature_t ;
struct TYPE_3__ {int * ds_feature; } ;
typedef TYPE_1__ dsl_dataset_t ;
typedef int boolean_t ;


 int zfeature_active (size_t,int ) ;

boolean_t
dsl_dataset_feature_is_active(dsl_dataset_t *ds, spa_feature_t f)
{
 return (zfeature_active(f, ds->ds_feature[f]));
}
