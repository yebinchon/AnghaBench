
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dd_crypto_obj; int dd_object; } ;
typedef TYPE_1__ dsl_dir_t ;
struct TYPE_6__ {int dd_clones; int dd_props_zapobj; int dd_deleg_zapobj; int dd_child_dir_zapobj; } ;


 TYPE_2__* dsl_dir_phys (TYPE_1__*) ;
 int mos_obj_refd (int ) ;
 int mos_obj_refd_multiple (int ) ;

__attribute__((used)) static void
count_dir_mos_objects(dsl_dir_t *dd)
{
 mos_obj_refd(dd->dd_object);
 mos_obj_refd(dsl_dir_phys(dd)->dd_child_dir_zapobj);
 mos_obj_refd(dsl_dir_phys(dd)->dd_deleg_zapobj);
 mos_obj_refd(dsl_dir_phys(dd)->dd_props_zapobj);
 mos_obj_refd(dsl_dir_phys(dd)->dd_clones);





 mos_obj_refd_multiple(dd->dd_crypto_obj);
}
