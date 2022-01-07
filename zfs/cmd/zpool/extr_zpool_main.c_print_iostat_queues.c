
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct stat_array {int * data; } ;
typedef int nvlist_t ;
struct TYPE_4__ {int cb_scripted; scalar_t__ cb_literal; } ;
typedef TYPE_1__ iostat_cbdata_t ;
typedef enum zfs_nicenum_format { ____Placeholder_zfs_nicenum_format } zfs_nicenum_format ;


 int ARRAY_SIZE (char const**) ;
 int IOS_QUEUES ;
 int ZFS_NICENUM_1024 ;
 int ZFS_NICENUM_RAW ;
 char const* ZPOOL_CONFIG_VDEV_ASYNC_R_ACTIVE_QUEUE ;
 char const* ZPOOL_CONFIG_VDEV_ASYNC_R_PEND_QUEUE ;
 char const* ZPOOL_CONFIG_VDEV_ASYNC_W_ACTIVE_QUEUE ;
 char const* ZPOOL_CONFIG_VDEV_ASYNC_W_PEND_QUEUE ;
 char const* ZPOOL_CONFIG_VDEV_SCRUB_ACTIVE_QUEUE ;
 char const* ZPOOL_CONFIG_VDEV_SCRUB_PEND_QUEUE ;
 char const* ZPOOL_CONFIG_VDEV_SYNC_R_ACTIVE_QUEUE ;
 char const* ZPOOL_CONFIG_VDEV_SYNC_R_PEND_QUEUE ;
 char const* ZPOOL_CONFIG_VDEV_SYNC_W_ACTIVE_QUEUE ;
 char const* ZPOOL_CONFIG_VDEV_SYNC_W_PEND_QUEUE ;
 char const* ZPOOL_CONFIG_VDEV_TRIM_ACTIVE_QUEUE ;
 char const* ZPOOL_CONFIG_VDEV_TRIM_PEND_QUEUE ;
 struct stat_array* calc_and_alloc_stats_ex (char const**,int,int *,int *) ;
 unsigned int default_column_width (TYPE_1__*,int ) ;
 int free_calc_stats (struct stat_array*,int) ;
 int print_one_stat (int ,int,unsigned int,int ) ;

__attribute__((used)) static void
print_iostat_queues(iostat_cbdata_t *cb, nvlist_t *oldnv,
    nvlist_t *newnv)
{
 int i;
 uint64_t val;
 const char *names[] = {
  ZPOOL_CONFIG_VDEV_SYNC_R_PEND_QUEUE,
  ZPOOL_CONFIG_VDEV_SYNC_R_ACTIVE_QUEUE,
  ZPOOL_CONFIG_VDEV_SYNC_W_PEND_QUEUE,
  ZPOOL_CONFIG_VDEV_SYNC_W_ACTIVE_QUEUE,
  ZPOOL_CONFIG_VDEV_ASYNC_R_PEND_QUEUE,
  ZPOOL_CONFIG_VDEV_ASYNC_R_ACTIVE_QUEUE,
  ZPOOL_CONFIG_VDEV_ASYNC_W_PEND_QUEUE,
  ZPOOL_CONFIG_VDEV_ASYNC_W_ACTIVE_QUEUE,
  ZPOOL_CONFIG_VDEV_SCRUB_PEND_QUEUE,
  ZPOOL_CONFIG_VDEV_SCRUB_ACTIVE_QUEUE,
  ZPOOL_CONFIG_VDEV_TRIM_PEND_QUEUE,
  ZPOOL_CONFIG_VDEV_TRIM_ACTIVE_QUEUE,
 };

 struct stat_array *nva;

 unsigned int column_width = default_column_width(cb, IOS_QUEUES);
 enum zfs_nicenum_format format;

 nva = calc_and_alloc_stats_ex(names, ARRAY_SIZE(names), ((void*)0), newnv);

 if (cb->cb_literal)
  format = ZFS_NICENUM_RAW;
 else
  format = ZFS_NICENUM_1024;

 for (i = 0; i < ARRAY_SIZE(names); i++) {
  val = nva[i].data[0];
  print_one_stat(val, format, column_width, cb->cb_scripted);
 }

 free_calc_stats(nva, ARRAY_SIZE(names));
}
