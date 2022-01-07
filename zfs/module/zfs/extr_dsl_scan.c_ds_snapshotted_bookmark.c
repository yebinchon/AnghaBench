
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ zb_objset; } ;
typedef TYPE_1__ zbookmark_phys_t ;
typedef int u_longlong_t ;
struct TYPE_8__ {scalar_t__ ds_object; } ;
typedef TYPE_2__ dsl_dataset_t ;
struct TYPE_9__ {scalar_t__ ds_prev_snap_obj; } ;


 TYPE_3__* dsl_dataset_phys (TYPE_2__*) ;
 int zfs_dbgmsg (char*,int ,int ) ;

__attribute__((used)) static void
ds_snapshotted_bookmark(dsl_dataset_t *ds, zbookmark_phys_t *scn_bookmark)
{
 if (scn_bookmark->zb_objset == ds->ds_object) {
  scn_bookmark->zb_objset =
      dsl_dataset_phys(ds)->ds_prev_snap_obj;
  zfs_dbgmsg("snapshotting ds %llu; currently traversing; "
      "reset zb_objset to %llu",
      (u_longlong_t)ds->ds_object,
      (u_longlong_t)dsl_dataset_phys(ds)->ds_prev_snap_obj);
 }
}
