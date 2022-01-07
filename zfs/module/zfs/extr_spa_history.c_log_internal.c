
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int va_list ;
typedef int spa_t ;
typedef int nvlist_t ;
struct TYPE_7__ {int tx_txg; } ;
typedef TYPE_1__ dmu_tx_t ;


 int ZFS_SPACE_CHECK_NONE ;
 int ZPOOL_HIST_INT_NAME ;
 int ZPOOL_HIST_INT_STR ;
 int ZPOOL_HIST_TXG ;
 scalar_t__ dmu_tx_is_syncing (TYPE_1__*) ;
 int dsl_sync_task_nowait (int ,int (*) (int *,TYPE_1__*),int *,int ,int ,TYPE_1__*) ;
 int fnvlist_add_string (int *,int ,char const*) ;
 int fnvlist_add_uint64 (int *,int ,int ) ;
 int fnvlist_free (int *) ;
 int kmem_strfree (char*) ;
 char* kmem_vasprintf (char const*,int ) ;
 int spa_get_dsl (int *) ;
 int spa_history_log_sync (int *,TYPE_1__*) ;
 scalar_t__ spa_is_initializing (int *) ;
 int spa_writeable (int *) ;

__attribute__((used)) static void
log_internal(nvlist_t *nvl, const char *operation, spa_t *spa,
    dmu_tx_t *tx, const char *fmt, va_list adx)
{
 char *msg;






 if (spa_is_initializing(spa) || !spa_writeable(spa)) {
  fnvlist_free(nvl);
  return;
 }

 msg = kmem_vasprintf(fmt, adx);
 fnvlist_add_string(nvl, ZPOOL_HIST_INT_STR, msg);
 kmem_strfree(msg);

 fnvlist_add_string(nvl, ZPOOL_HIST_INT_NAME, operation);
 fnvlist_add_uint64(nvl, ZPOOL_HIST_TXG, tx->tx_txg);

 if (dmu_tx_is_syncing(tx)) {
  spa_history_log_sync(nvl, tx);
 } else {
  dsl_sync_task_nowait(spa_get_dsl(spa),
      spa_history_log_sync, nvl, 0, ZFS_SPACE_CHECK_NONE, tx);
 }

}
