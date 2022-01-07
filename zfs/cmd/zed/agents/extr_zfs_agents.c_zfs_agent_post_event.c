
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
typedef int nvlist_t ;
typedef scalar_t__ int64_t ;
struct TYPE_7__ {char const* gs_devid; int gs_vdev_type; scalar_t__ gs_vdev_expandtime; int gs_vdev_guid; int gs_pool_guid; int member_0; } ;
typedef TYPE_1__ guid_search_t ;
typedef int device_type_t ;
struct TYPE_8__ {int ae_subclass; int ae_class; int * ae_nvl; } ;
typedef TYPE_2__ agent_event_t ;





 int DEV_IDENTIFIER ;
 char* EC_DEV_REMOVE ;
 char* EC_ZFS ;
 char* ESC_DISK ;
 char* ESC_ZFS_VDEV_CHECK ;
 int FM_CLASS ;
 int FM_EREPORT_PAYLOAD_ZFS_POOL_GUID ;
 int FM_EREPORT_PAYLOAD_ZFS_VDEV_GUID ;
 int FM_EREPORT_PAYLOAD_ZFS_VDEV_TYPE ;
 int FM_EREPORT_TIME ;
 int LOG_INFO ;
 char const* VDEV_TYPE_DISK ;
 char const* VDEV_TYPE_L2CACHE ;
 char const* VDEV_TYPE_SPARE ;
 int ZFS_EV_POOL_GUID ;
 int ZFS_EV_VDEV_GUID ;
 int agent_cond ;
 int agent_events ;
 int agent_lock ;
 int free (TYPE_2__*) ;
 int g_zfs_hdl ;
 int gettimeofday (struct timeval*,int *) ;
 int list_insert_tail (int *,TYPE_2__*) ;
 TYPE_2__* malloc (int) ;
 int nvlist_add_int64_array (int *,int ,scalar_t__*,int) ;
 int nvlist_add_string (int *,int ,char const*) ;
 int nvlist_add_uint64 (int *,int ,int ) ;
 scalar_t__ nvlist_dup (int *,int **,int ) ;
 scalar_t__ nvlist_exists (int *,int ) ;
 int nvlist_lookup_string (int *,int ,char const**) ;
 int nvlist_lookup_uint64 (int *,int ,int *) ;
 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlcpy (int ,char const*,int) ;
 int zed_log_msg (int ,char*,char*,char const*) ;
 int zfs_agent_iter_pool ;
 int zpool_iter (int ,int ,TYPE_1__*) ;

void
zfs_agent_post_event(const char *class, const char *subclass, nvlist_t *nvl)
{
 agent_event_t *event;

 if (subclass == ((void*)0))
  subclass = "";

 event = malloc(sizeof (agent_event_t));
 if (event == ((void*)0) || nvlist_dup(nvl, &event->ae_nvl, 0) != 0) {
  if (event)
   free(event);
  return;
 }

 if (strcmp(class, "sysevent.fs.zfs.vdev_check") == 0) {
  class = EC_ZFS;
  subclass = ESC_ZFS_VDEV_CHECK;
 }







 if ((strcmp(class, EC_DEV_REMOVE) == 0) &&
     (strcmp(subclass, ESC_DISK) == 0) &&
     (nvlist_exists(nvl, ZFS_EV_VDEV_GUID) ||
     nvlist_exists(nvl, DEV_IDENTIFIER))) {
  nvlist_t *payload = event->ae_nvl;
  struct timeval tv;
  int64_t tod[2];
  uint64_t pool_guid = 0, vdev_guid = 0;
  guid_search_t search = { 0 };
  device_type_t devtype = 129;

  class = "resource.fs.zfs.removed";
  subclass = "";

  (void) nvlist_add_string(payload, FM_CLASS, class);
  (void) nvlist_lookup_uint64(nvl, ZFS_EV_POOL_GUID, &pool_guid);
  (void) nvlist_lookup_uint64(nvl, ZFS_EV_VDEV_GUID, &vdev_guid);

  (void) gettimeofday(&tv, ((void*)0));
  tod[0] = tv.tv_sec;
  tod[1] = tv.tv_usec;
  (void) nvlist_add_int64_array(payload, FM_EREPORT_TIME, tod, 2);





  (void) nvlist_lookup_string(nvl, DEV_IDENTIFIER,
      &search.gs_devid);
  (void) zpool_iter(g_zfs_hdl, zfs_agent_iter_pool, &search);
  pool_guid = search.gs_pool_guid;
  vdev_guid = search.gs_vdev_guid;
  devtype = search.gs_vdev_type;







  if (search.gs_vdev_expandtime != 0 &&
      search.gs_vdev_expandtime + 10 > tv.tv_sec) {
   zed_log_msg(LOG_INFO, "agent post event: ignoring '%s' "
       "for recently expanded device '%s'", EC_DEV_REMOVE,
       search.gs_devid);
   goto out;
  }

  (void) nvlist_add_uint64(payload,
      FM_EREPORT_PAYLOAD_ZFS_POOL_GUID, pool_guid);
  (void) nvlist_add_uint64(payload,
      FM_EREPORT_PAYLOAD_ZFS_VDEV_GUID, vdev_guid);
  switch (devtype) {
  case 130:
   (void) nvlist_add_string(payload,
       FM_EREPORT_PAYLOAD_ZFS_VDEV_TYPE,
       VDEV_TYPE_L2CACHE);
   break;
  case 128:
   (void) nvlist_add_string(payload,
       FM_EREPORT_PAYLOAD_ZFS_VDEV_TYPE, VDEV_TYPE_SPARE);
   break;
  case 129:
   (void) nvlist_add_string(payload,
       FM_EREPORT_PAYLOAD_ZFS_VDEV_TYPE, VDEV_TYPE_DISK);
   break;
  }

  zed_log_msg(LOG_INFO, "agent post event: mapping '%s' to '%s'",
      EC_DEV_REMOVE, class);
 }

 (void) strlcpy(event->ae_class, class, sizeof (event->ae_class));
 (void) strlcpy(event->ae_subclass, subclass,
     sizeof (event->ae_subclass));

 (void) pthread_mutex_lock(&agent_lock);
 list_insert_tail(&agent_events, event);
 (void) pthread_mutex_unlock(&agent_lock);

out:
 (void) pthread_cond_signal(&agent_cond);
}
