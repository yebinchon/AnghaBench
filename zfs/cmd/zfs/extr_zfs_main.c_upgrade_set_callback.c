
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zfs_handle_t ;
typedef int verstr ;
struct TYPE_2__ {int cb_version; int cb_numsamegraded; int cb_numfailed; scalar_t__* cb_lastfs; int cb_numupgraded; } ;
typedef TYPE_1__ upgrade_cbdata_t ;
typedef int u_longlong_t ;


 int B_FALSE ;
 int ZFS_PROP_VERSION ;
 int g_zfs ;
 char* gettext (char*) ;
 int history_str ;
 int log_history ;
 int printf (char*,char*,int) ;
 int same_pool (int *,scalar_t__*) ;
 int snprintf (char*,int,char*,int ) ;
 int strcpy (scalar_t__*,char*) ;
 char* zfs_get_name (int *) ;
 int zfs_prop_get_int (int *,int ) ;
 scalar_t__ zfs_prop_set (int *,char*,char*) ;
 scalar_t__ zfs_spa_version (int *,int*) ;
 int zfs_spa_version_map (int) ;
 int zpool_log_history (int ,int ) ;

__attribute__((used)) static int
upgrade_set_callback(zfs_handle_t *zhp, void *data)
{
 upgrade_cbdata_t *cb = data;
 int version = zfs_prop_get_int(zhp, ZFS_PROP_VERSION);
 int needed_spa_version;
 int spa_version;

 if (zfs_spa_version(zhp, &spa_version) < 0)
  return (-1);

 needed_spa_version = zfs_spa_version_map(cb->cb_version);

 if (needed_spa_version < 0)
  return (-1);

 if (spa_version < needed_spa_version) {

  (void) printf(gettext("%s: can not be "
      "upgraded; the pool version needs to first "
      "be upgraded\nto version %d\n\n"),
      zfs_get_name(zhp), needed_spa_version);
  cb->cb_numfailed++;
  return (0);
 }


 if (version < cb->cb_version) {
  char verstr[16];
  (void) snprintf(verstr, sizeof (verstr),
      "%llu", (u_longlong_t)cb->cb_version);
  if (cb->cb_lastfs[0] && !same_pool(zhp, cb->cb_lastfs)) {






   (void) zpool_log_history(g_zfs, history_str);
   log_history = B_FALSE;
  }
  if (zfs_prop_set(zhp, "version", verstr) == 0)
   cb->cb_numupgraded++;
  else
   cb->cb_numfailed++;
  (void) strcpy(cb->cb_lastfs, zfs_get_name(zhp));
 } else if (version > cb->cb_version) {

  (void) printf(gettext("%s: can not be downgraded; "
      "it is already at version %u\n"),
      zfs_get_name(zhp), version);
  cb->cb_numfailed++;
 } else {
  cb->cb_numsamegraded++;
 }
 return (0);
}
