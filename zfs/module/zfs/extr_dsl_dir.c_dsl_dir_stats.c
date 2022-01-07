
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int uint64_t ;
typedef int nvlist_t ;
struct TYPE_16__ {int dd_lock; } ;
typedef TYPE_1__ dsl_dir_t ;
struct TYPE_17__ {int dd_flags; } ;


 int DD_FLAG_USED_BREAKDOWN ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int ZFS_PROP_FILESYSTEM_COUNT ;
 int ZFS_PROP_LOGICALUSED ;
 int ZFS_PROP_ORIGIN ;
 int ZFS_PROP_QUOTA ;
 int ZFS_PROP_RESERVATION ;
 int ZFS_PROP_SNAPSHOT_COUNT ;
 int ZFS_PROP_USEDCHILD ;
 int ZFS_PROP_USEDDS ;
 int ZFS_PROP_USEDREFRESERV ;
 int ZFS_PROP_USEDSNAP ;
 scalar_t__ dsl_dir_get_filesystem_count (TYPE_1__*,int *) ;
 int dsl_dir_get_logicalused (TYPE_1__*) ;
 int dsl_dir_get_origin (TYPE_1__*,char*) ;
 int dsl_dir_get_quota (TYPE_1__*) ;
 int dsl_dir_get_reservation (TYPE_1__*) ;
 scalar_t__ dsl_dir_get_snapshot_count (TYPE_1__*,int *) ;
 int dsl_dir_get_usedchild (TYPE_1__*) ;
 int dsl_dir_get_usedds (TYPE_1__*) ;
 int dsl_dir_get_usedrefreserv (TYPE_1__*) ;
 int dsl_dir_get_usedsnap (TYPE_1__*) ;
 scalar_t__ dsl_dir_is_clone (TYPE_1__*) ;
 TYPE_3__* dsl_dir_phys (TYPE_1__*) ;
 int dsl_prop_nvlist_add_string (int *,int ,char*) ;
 int dsl_prop_nvlist_add_uint64 (int *,int ,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
dsl_dir_stats(dsl_dir_t *dd, nvlist_t *nv)
{
 mutex_enter(&dd->dd_lock);
 dsl_prop_nvlist_add_uint64(nv, ZFS_PROP_QUOTA,
     dsl_dir_get_quota(dd));
 dsl_prop_nvlist_add_uint64(nv, ZFS_PROP_RESERVATION,
     dsl_dir_get_reservation(dd));
 dsl_prop_nvlist_add_uint64(nv, ZFS_PROP_LOGICALUSED,
     dsl_dir_get_logicalused(dd));
 if (dsl_dir_phys(dd)->dd_flags & DD_FLAG_USED_BREAKDOWN) {
  dsl_prop_nvlist_add_uint64(nv, ZFS_PROP_USEDSNAP,
      dsl_dir_get_usedsnap(dd));
  dsl_prop_nvlist_add_uint64(nv, ZFS_PROP_USEDDS,
      dsl_dir_get_usedds(dd));
  dsl_prop_nvlist_add_uint64(nv, ZFS_PROP_USEDREFRESERV,
      dsl_dir_get_usedrefreserv(dd));
  dsl_prop_nvlist_add_uint64(nv, ZFS_PROP_USEDCHILD,
      dsl_dir_get_usedchild(dd));
 }
 mutex_exit(&dd->dd_lock);

 uint64_t count;
 if (dsl_dir_get_filesystem_count(dd, &count) == 0) {
  dsl_prop_nvlist_add_uint64(nv, ZFS_PROP_FILESYSTEM_COUNT,
      count);
 }
 if (dsl_dir_get_snapshot_count(dd, &count) == 0) {
  dsl_prop_nvlist_add_uint64(nv, ZFS_PROP_SNAPSHOT_COUNT,
      count);
 }

 if (dsl_dir_is_clone(dd)) {
  char buf[ZFS_MAX_DATASET_NAME_LEN];
  dsl_dir_get_origin(dd, buf);
  dsl_prop_nvlist_add_string(nv, ZFS_PROP_ORIGIN, buf);
 }

}
