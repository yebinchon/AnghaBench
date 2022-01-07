
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* os_dsl_dataset; } ;
typedef TYPE_2__ objset_t ;
typedef int boolean_t ;
struct TYPE_4__ {int ds_dir; } ;


 int dsl_dir_incompatible_encryption_version (int ) ;

boolean_t
dmu_objset_incompatible_encryption_version(objset_t *os)
{
 return (dsl_dir_incompatible_encryption_version(
     os->os_dsl_dataset->ds_dir));
}
