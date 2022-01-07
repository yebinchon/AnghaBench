
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int spa_t ;
typedef int nvlist_t ;


 int ESC_ZFS_HISTORY_EVENT ;
 int ZFS_EV_HIST_CMD ;
 int ZFS_EV_HIST_DSID ;
 int ZFS_EV_HIST_DSNAME ;
 int ZFS_EV_HIST_HOST ;
 int ZFS_EV_HIST_INT_EVENT ;
 int ZFS_EV_HIST_INT_NAME ;
 int ZFS_EV_HIST_INT_STR ;
 int ZFS_EV_HIST_IOCTL ;
 int ZFS_EV_HIST_TIME ;
 int ZFS_EV_HIST_TXG ;
 int ZFS_EV_HIST_WHO ;
 int ZFS_EV_HIST_ZONE ;
 int ZPOOL_HIST_CMD ;
 int ZPOOL_HIST_DSID ;
 int ZPOOL_HIST_DSNAME ;
 int ZPOOL_HIST_HOST ;
 int ZPOOL_HIST_INT_EVENT ;
 int ZPOOL_HIST_INT_NAME ;
 int ZPOOL_HIST_INT_STR ;
 int ZPOOL_HIST_IOCTL ;
 int ZPOOL_HIST_TIME ;
 int ZPOOL_HIST_TXG ;
 int ZPOOL_HIST_WHO ;
 int ZPOOL_HIST_ZONE ;
 int fnvlist_add_string (int *,int ,char*) ;
 int fnvlist_add_uint64 (int *,int ,int ) ;
 int * fnvlist_alloc () ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,int *) ;
 int spa_event_notify (int *,int *,int *,int ) ;

__attribute__((used)) static void
spa_history_log_notify(spa_t *spa, nvlist_t *nvl)
{
 nvlist_t *hist_nvl = fnvlist_alloc();
 uint64_t uint64;
 char *string;

 if (nvlist_lookup_string(nvl, ZPOOL_HIST_CMD, &string) == 0)
  fnvlist_add_string(hist_nvl, ZFS_EV_HIST_CMD, string);

 if (nvlist_lookup_string(nvl, ZPOOL_HIST_INT_NAME, &string) == 0)
  fnvlist_add_string(hist_nvl, ZFS_EV_HIST_INT_NAME, string);

 if (nvlist_lookup_string(nvl, ZPOOL_HIST_ZONE, &string) == 0)
  fnvlist_add_string(hist_nvl, ZFS_EV_HIST_ZONE, string);

 if (nvlist_lookup_string(nvl, ZPOOL_HIST_HOST, &string) == 0)
  fnvlist_add_string(hist_nvl, ZFS_EV_HIST_HOST, string);

 if (nvlist_lookup_string(nvl, ZPOOL_HIST_DSNAME, &string) == 0)
  fnvlist_add_string(hist_nvl, ZFS_EV_HIST_DSNAME, string);

 if (nvlist_lookup_string(nvl, ZPOOL_HIST_INT_STR, &string) == 0)
  fnvlist_add_string(hist_nvl, ZFS_EV_HIST_INT_STR, string);

 if (nvlist_lookup_string(nvl, ZPOOL_HIST_IOCTL, &string) == 0)
  fnvlist_add_string(hist_nvl, ZFS_EV_HIST_IOCTL, string);

 if (nvlist_lookup_string(nvl, ZPOOL_HIST_INT_NAME, &string) == 0)
  fnvlist_add_string(hist_nvl, ZFS_EV_HIST_INT_NAME, string);

 if (nvlist_lookup_uint64(nvl, ZPOOL_HIST_DSID, &uint64) == 0)
  fnvlist_add_uint64(hist_nvl, ZFS_EV_HIST_DSID, uint64);

 if (nvlist_lookup_uint64(nvl, ZPOOL_HIST_TXG, &uint64) == 0)
  fnvlist_add_uint64(hist_nvl, ZFS_EV_HIST_TXG, uint64);

 if (nvlist_lookup_uint64(nvl, ZPOOL_HIST_TIME, &uint64) == 0)
  fnvlist_add_uint64(hist_nvl, ZFS_EV_HIST_TIME, uint64);

 if (nvlist_lookup_uint64(nvl, ZPOOL_HIST_WHO, &uint64) == 0)
  fnvlist_add_uint64(hist_nvl, ZFS_EV_HIST_WHO, uint64);

 if (nvlist_lookup_uint64(nvl, ZPOOL_HIST_INT_EVENT, &uint64) == 0)
  fnvlist_add_uint64(hist_nvl, ZFS_EV_HIST_INT_EVENT, uint64);

 spa_event_notify(spa, ((void*)0), hist_nvl, ESC_ZFS_HISTORY_EVENT);

 nvlist_free(hist_nvl);
}
