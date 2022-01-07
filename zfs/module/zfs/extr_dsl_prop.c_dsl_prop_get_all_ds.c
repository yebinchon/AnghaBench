
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int objset_t ;
typedef int nvlist_t ;
typedef int dsl_prop_getflags_t ;
struct TYPE_12__ {int * dp_meta_objset; } ;
typedef TYPE_1__ dsl_pool_t ;
struct TYPE_13__ {struct TYPE_13__* dd_parent; TYPE_1__* dd_pool; } ;
typedef TYPE_2__ dsl_dir_t ;
struct TYPE_14__ {TYPE_2__* ds_dir; scalar_t__ ds_is_snapshot; } ;
typedef TYPE_3__ dsl_dataset_t ;
struct TYPE_16__ {scalar_t__ ds_props_obj; } ;
struct TYPE_15__ {scalar_t__ dd_props_zapobj; } ;


 int ASSERT (int) ;
 int DSL_PROP_GET_INHERITING ;
 int DSL_PROP_GET_LOCAL ;
 int DSL_PROP_GET_RECEIVED ;
 int DSL_PROP_GET_SNAPSHOT ;
 int KM_SLEEP ;
 int NV_UNIQUE_NAME ;
 int VERIFY (int) ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int dsl_dataset_name (TYPE_3__*,char*) ;
 TYPE_9__* dsl_dataset_phys (TYPE_3__*) ;
 int dsl_dir_name (TYPE_2__*,char*) ;
 TYPE_6__* dsl_dir_phys (TYPE_2__*) ;
 int dsl_pool_config_held (TYPE_1__*) ;
 int dsl_prop_get_all_impl (int *,scalar_t__,char*,int,int *) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;

__attribute__((used)) static int
dsl_prop_get_all_ds(dsl_dataset_t *ds, nvlist_t **nvp,
    dsl_prop_getflags_t flags)
{
 dsl_dir_t *dd = ds->ds_dir;
 dsl_pool_t *dp = dd->dd_pool;
 objset_t *mos = dp->dp_meta_objset;
 int err = 0;
 char setpoint[ZFS_MAX_DATASET_NAME_LEN];

 VERIFY(nvlist_alloc(nvp, NV_UNIQUE_NAME, KM_SLEEP) == 0);

 if (ds->ds_is_snapshot)
  flags |= DSL_PROP_GET_SNAPSHOT;

 ASSERT(dsl_pool_config_held(dp));

 if (dsl_dataset_phys(ds)->ds_props_obj != 0) {
  ASSERT(flags & DSL_PROP_GET_SNAPSHOT);
  dsl_dataset_name(ds, setpoint);
  err = dsl_prop_get_all_impl(mos,
      dsl_dataset_phys(ds)->ds_props_obj, setpoint, flags, *nvp);
  if (err)
   goto out;
 }

 for (; dd != ((void*)0); dd = dd->dd_parent) {
  if (dd != ds->ds_dir || (flags & DSL_PROP_GET_SNAPSHOT)) {
   if (flags & (DSL_PROP_GET_LOCAL |
       DSL_PROP_GET_RECEIVED))
    break;
   flags |= DSL_PROP_GET_INHERITING;
  }
  dsl_dir_name(dd, setpoint);
  err = dsl_prop_get_all_impl(mos,
      dsl_dir_phys(dd)->dd_props_zapobj, setpoint, flags, *nvp);
  if (err)
   break;
 }

out:
 if (err) {
  nvlist_free(*nvp);
  *nvp = ((void*)0);
 }
 return (err);
}
