
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int ds_object; TYPE_2__* ds_dir; } ;
typedef TYPE_3__ dsl_dataset_t ;
typedef int boolean_t ;
struct TYPE_7__ {TYPE_1__* dd_pool; } ;
struct TYPE_6__ {int dp_meta_objset; } ;


 int DS_FIELD_RESUME_TOGUID ;
 scalar_t__ dsl_dataset_is_zapified (TYPE_3__*) ;
 scalar_t__ zap_contains (int ,int ,int ) ;

boolean_t
dsl_dataset_has_resume_receive_state(dsl_dataset_t *ds)
{
 return (dsl_dataset_is_zapified(ds) &&
     zap_contains(ds->ds_dir->dd_pool->dp_meta_objset,
     ds->ds_object, DS_FIELD_RESUME_TOGUID) == 0);
}
