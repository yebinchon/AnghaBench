
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int objset_t ;
struct TYPE_12__ {int * dp_meta_objset; } ;
typedef TYPE_1__ dsl_pool_t ;
struct TYPE_13__ {scalar_t__* ds_snapname; scalar_t__ ds_object; TYPE_6__* ds_dir; } ;
typedef TYPE_2__ dsl_dataset_t ;
struct TYPE_14__ {int ds_snapnames_zapobj; } ;
typedef TYPE_3__ dsl_dataset_phys_t ;
struct TYPE_15__ {TYPE_3__* db_data; } ;
typedef TYPE_4__ dmu_buf_t ;
struct TYPE_18__ {scalar_t__ ds_next_snap_obj; } ;
struct TYPE_17__ {TYPE_1__* dd_pool; } ;
struct TYPE_16__ {int dd_head_dataset_obj; } ;


 scalar_t__ B_TRUE ;
 int FTAG ;
 int dmu_bonus_hold (int *,int ,int ,TYPE_4__**) ;
 int dmu_buf_rele (TYPE_4__*,int ) ;
 TYPE_7__* dsl_dataset_phys (TYPE_2__*) ;
 TYPE_5__* dsl_dir_phys (TYPE_6__*) ;
 int snprintf (scalar_t__*,int,char*,unsigned long long,int) ;
 int zap_value_search (int *,int ,scalar_t__,int ,scalar_t__*) ;
 scalar_t__ zfs_recover ;

int
dsl_dataset_get_snapname(dsl_dataset_t *ds)
{
 dsl_dataset_phys_t *headphys;
 int err;
 dmu_buf_t *headdbuf;
 dsl_pool_t *dp = ds->ds_dir->dd_pool;
 objset_t *mos = dp->dp_meta_objset;

 if (ds->ds_snapname[0])
  return (0);
 if (dsl_dataset_phys(ds)->ds_next_snap_obj == 0)
  return (0);

 err = dmu_bonus_hold(mos, dsl_dir_phys(ds->ds_dir)->dd_head_dataset_obj,
     FTAG, &headdbuf);
 if (err != 0)
  return (err);
 headphys = headdbuf->db_data;
 err = zap_value_search(dp->dp_meta_objset,
     headphys->ds_snapnames_zapobj, ds->ds_object, 0, ds->ds_snapname);
 if (err != 0 && zfs_recover == B_TRUE) {
  err = 0;
  (void) snprintf(ds->ds_snapname, sizeof (ds->ds_snapname),
      "SNAPOBJ=%llu-ERR=%d",
      (unsigned long long)ds->ds_object, err);
 }
 dmu_buf_rele(headdbuf, FTAG);
 return (err);
}
