
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct feature_type_uint64_array_arg {int length; struct feature_type_uint64_array_arg* array; } ;
typedef size_t spa_feature_t ;
struct TYPE_4__ {struct feature_type_uint64_array_arg** ds_feature; } ;
typedef TYPE_1__ dsl_dataset_t ;
struct TYPE_5__ {int fi_type; } ;




 int kmem_free (struct feature_type_uint64_array_arg*,int) ;
 int panic (char*,int) ;
 TYPE_3__* spa_feature_table ;

__attribute__((used)) static void
unload_zfeature(dsl_dataset_t *ds, spa_feature_t f)
{
 switch (spa_feature_table[f].fi_type) {
 case 129:
  break;
 case 128:
 {
  struct feature_type_uint64_array_arg *ftuaa = ds->ds_feature[f];
  kmem_free(ftuaa->array, ftuaa->length * sizeof (uint64_t));
  kmem_free(ftuaa, sizeof (*ftuaa));
  break;
 }
 default:
  panic("Invalid zfeature type %d", spa_feature_table[f].fi_type);
 }
}
