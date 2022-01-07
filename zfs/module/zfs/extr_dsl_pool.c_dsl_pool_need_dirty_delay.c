
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_4__ {scalar_t__ dp_dirty_total; int dp_lock; } ;
typedef TYPE_1__ dsl_pool_t ;
typedef int boolean_t ;


 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int txg_kick (TYPE_1__*) ;
 int zfs_delay_min_dirty_percent ;
 int zfs_dirty_data_max ;
 int zfs_dirty_data_sync_percent ;

boolean_t
dsl_pool_need_dirty_delay(dsl_pool_t *dp)
{
 uint64_t delay_min_bytes =
     zfs_dirty_data_max * zfs_delay_min_dirty_percent / 100;
 uint64_t dirty_min_bytes =
     zfs_dirty_data_max * zfs_dirty_data_sync_percent / 100;
 uint64_t dirty;

 mutex_enter(&dp->dp_lock);
 dirty = dp->dp_dirty_total;
 mutex_exit(&dp->dp_lock);
 if (dirty > dirty_min_bytes)
  txg_kick(dp);
 return (dirty > delay_min_bytes);
}
