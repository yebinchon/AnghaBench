
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_41__ TYPE_9__ ;
typedef struct TYPE_40__ TYPE_8__ ;
typedef struct TYPE_39__ TYPE_7__ ;
typedef struct TYPE_38__ TYPE_6__ ;
typedef struct TYPE_37__ TYPE_5__ ;
typedef struct TYPE_36__ TYPE_4__ ;
typedef struct TYPE_35__ TYPE_3__ ;
typedef struct TYPE_34__ TYPE_2__ ;
typedef struct TYPE_33__ TYPE_1__ ;
typedef struct TYPE_32__ TYPE_15__ ;
typedef struct TYPE_31__ TYPE_14__ ;
typedef struct TYPE_30__ TYPE_13__ ;
typedef struct TYPE_29__ TYPE_12__ ;
typedef struct TYPE_28__ TYPE_11__ ;
typedef struct TYPE_27__ TYPE_10__ ;


struct TYPE_39__ {scalar_t__ zc_pool_guid; scalar_t__ zc_vdev_guid; int zc_has_remove_timer; char* zc_serd_io; char* zc_serd_checksum; } ;
struct TYPE_31__ {int ertv_nsec; int ertv_sec; } ;
struct TYPE_29__ {TYPE_7__ zc_data; int zc_remove_timer; int zc_case; TYPE_14__ zc_when; } ;
typedef TYPE_12__ zfs_case_t ;
struct TYPE_30__ {int zc_pool_state; scalar_t__ zc_vdev_guid; scalar_t__ zc_pool_guid; scalar_t__ zc_ena; int zc_version; int member_0; } ;
typedef TYPE_13__ zfs_case_data_t ;
typedef scalar_t__ uint64_t ;
struct load_time_arg {scalar_t__ lt_found; TYPE_14__* lt_time; scalar_t__ lt_guid; } ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;
typedef scalar_t__ int32_t ;
typedef int fmd_hdl_t ;
typedef int fmd_event_t ;
typedef int fmd_case_t ;
typedef TYPE_14__ er_timeval_t ;
typedef int data ;
typedef scalar_t__ boolean_t ;
struct TYPE_40__ {int ui64; } ;
struct TYPE_41__ {TYPE_8__ fmds_value; } ;
struct TYPE_37__ {int ui64; } ;
struct TYPE_38__ {TYPE_5__ fmds_value; } ;
struct TYPE_35__ {int ui64; } ;
struct TYPE_36__ {TYPE_3__ fmds_value; } ;
struct TYPE_33__ {int ui64; } ;
struct TYPE_34__ {TYPE_1__ fmds_value; } ;
struct TYPE_27__ {int ui64; } ;
struct TYPE_28__ {TYPE_10__ fmds_value; } ;
struct TYPE_32__ {TYPE_9__ resource_drops; TYPE_6__ old_drops; TYPE_4__ vdev_drops; TYPE_2__ dev_drops; TYPE_11__ import_drops; } ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int CASE_DATA ;
 int CASE_DATA_VERSION_SERD ;
 int FM_EREPORT_DETECTOR ;
 int FM_EREPORT_ENA ;
 int FM_EREPORT_FAILMODE_CONTINUE ;
 int FM_EREPORT_FAILMODE_WAIT ;
 int FM_EREPORT_PAYLOAD_ZFS_POOL_CONTEXT ;
 int FM_EREPORT_PAYLOAD_ZFS_POOL_FAILMODE ;
 int FM_EREPORT_PAYLOAD_ZFS_POOL_GUID ;
 int FM_EREPORT_PAYLOAD_ZFS_VDEV_GUID ;
 int FM_EREPORT_PAYLOAD_ZFS_VDEV_STATE ;
 int FM_EREPORT_PAYLOAD_ZFS_VDEV_TYPE ;
 int FM_EREPORT_ZFS_CHECKSUM ;
 int FM_EREPORT_ZFS_CONFIG_CACHE_WRITE ;
 int FM_EREPORT_ZFS_DATA ;
 int FM_EREPORT_ZFS_DELAY ;
 int FM_EREPORT_ZFS_IO ;
 int FM_EREPORT_ZFS_IO_FAILURE ;
 int FM_EREPORT_ZFS_LOG_REPLAY ;
 int FM_EREPORT_ZFS_POOL ;
 int FM_EREPORT_ZFS_PROBE_FAILURE ;
 int FM_RESOURCE_AUTOREPLACE ;
 int FM_RESOURCE_REMOVED ;
 int FM_RESOURCE_STATECHANGE ;
 scalar_t__ SPA_LOAD_IMPORT ;
 scalar_t__ SPA_LOAD_NONE ;
 scalar_t__ SPA_LOAD_OPEN ;
 scalar_t__ VDEV_STATE_HEALTHY ;
 char* VDEV_TYPE_DISK ;
 char* VDEV_TYPE_FILE ;
 char* ZFS_MAKE_EREPORT (int ) ;
 char* ZFS_MAKE_RSRC (int ) ;
 int assert (int ) ;
 int fmd_buf_create (int *,int *,int ,int) ;
 int fmd_buf_write (int *,int *,int ,TYPE_13__*,int) ;
 int fmd_case_add_ereport (int *,int ,int *) ;
 int fmd_case_close (int *,int ) ;
 int * fmd_case_open (int *,int *) ;
 scalar_t__ fmd_case_solved (int *,int ) ;
 int fmd_hdl_debug (int *,char*,...) ;
 int * fmd_hdl_getspecific (int *) ;
 scalar_t__ fmd_nvl_class_match (int *,int *,char*) ;
 int fmd_prop_get_int32 (int *,char*) ;
 int fmd_prop_get_int64 (int *,char*) ;
 int fmd_serd_create (int *,char*,int ,int ) ;
 scalar_t__ fmd_serd_record (int *,char*,int *) ;
 int fmd_serd_reset (int *,char*) ;
 int fmd_timer_install (int *,TYPE_12__*,int *,int ) ;
 int fmd_timer_remove (int *,int ) ;
 int nvlist_lookup_int32 (int *,int ,scalar_t__*) ;
 int nvlist_lookup_nvlist (int *,int ,int **) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlen (int ) ;
 scalar_t__ strncmp (char*,int ,int ) ;
 char const* strrchr (char const*,char) ;
 scalar_t__ timeval_earlier (TYPE_14__*,TYPE_14__*) ;
 TYPE_12__* uu_list_first (int ) ;
 TYPE_12__* uu_list_next (int ,TYPE_12__*) ;
 int zfs_case_serialize (int *,TYPE_12__*) ;
 int zfs_case_solve (int *,TYPE_12__*,char*,scalar_t__) ;
 TYPE_12__* zfs_case_unserialize (int *,int *) ;
 int zfs_cases ;
 int zfs_ereport_when (int *,int *,TYPE_14__*) ;
 int zfs_purge_cases (int *) ;
 int zfs_remove_timeout ;
 int zfs_serd_name (char*,scalar_t__,scalar_t__,char*) ;
 TYPE_15__ zfs_stats ;
 int zpool_find_load_time ;
 scalar_t__ zpool_iter (int *,int ,struct load_time_arg*) ;

__attribute__((used)) static void
zfs_fm_recv(fmd_hdl_t *hdl, fmd_event_t *ep, nvlist_t *nvl, const char *class)
{
 zfs_case_t *zcp, *dcp;
 int32_t pool_state;
 uint64_t ena, pool_guid, vdev_guid;
 er_timeval_t pool_load;
 er_timeval_t er_when;
 nvlist_t *detector;
 boolean_t pool_found = B_FALSE;
 boolean_t isresource;
 char *type;






 if (fmd_nvl_class_match(hdl, nvl, "sysevent.fs.zfs.*")) {
  fmd_hdl_debug(hdl, "purging orphaned cases from %s",
      strrchr(class, '.') + 1);
  zfs_purge_cases(hdl);
  zfs_stats.resource_drops.fmds_value.ui64++;
  return;
 }

 isresource = fmd_nvl_class_match(hdl, nvl, "resource.fs.zfs.*");

 if (isresource) {



  if (nvlist_lookup_uint64(nvl, FM_EREPORT_PAYLOAD_ZFS_VDEV_GUID,
      &vdev_guid) != 0)
   pool_state = SPA_LOAD_OPEN;
  else
   pool_state = SPA_LOAD_NONE;
  detector = ((void*)0);
 } else {
  (void) nvlist_lookup_nvlist(nvl,
      FM_EREPORT_DETECTOR, &detector);
  (void) nvlist_lookup_int32(nvl,
      FM_EREPORT_PAYLOAD_ZFS_POOL_CONTEXT, &pool_state);
 }







 if (pool_state == SPA_LOAD_IMPORT) {
  zfs_stats.import_drops.fmds_value.ui64++;
  fmd_hdl_debug(hdl, "ignoring '%s' during import", class);
  return;
 }




 if (pool_state == SPA_LOAD_OPEN &&
     (fmd_nvl_class_match(hdl, nvl,
     ZFS_MAKE_EREPORT(FM_EREPORT_ZFS_CHECKSUM)) ||
     fmd_nvl_class_match(hdl, nvl,
     ZFS_MAKE_EREPORT(FM_EREPORT_ZFS_IO)) ||
     fmd_nvl_class_match(hdl, nvl,
     ZFS_MAKE_EREPORT(FM_EREPORT_ZFS_PROBE_FAILURE)))) {
  fmd_hdl_debug(hdl, "ignoring '%s' during pool open", class);
  zfs_stats.dev_drops.fmds_value.ui64++;
  return;
 }




 if (nvlist_lookup_string(nvl, FM_EREPORT_PAYLOAD_ZFS_VDEV_TYPE,
     &type) == 0) {
  if (strcmp(type, VDEV_TYPE_DISK) != 0 &&
      strcmp(type, VDEV_TYPE_FILE) != 0) {
   zfs_stats.vdev_drops.fmds_value.ui64++;
   return;
  }
 }





 (void) nvlist_lookup_uint64(nvl,
     FM_EREPORT_PAYLOAD_ZFS_POOL_GUID, &pool_guid);
 if (nvlist_lookup_uint64(nvl,
     FM_EREPORT_PAYLOAD_ZFS_VDEV_GUID, &vdev_guid) != 0)
  vdev_guid = 0;
 if (nvlist_lookup_uint64(nvl, FM_EREPORT_ENA, &ena) != 0)
  ena = 0;

 zfs_ereport_when(hdl, nvl, &er_when);

 for (zcp = uu_list_first(zfs_cases); zcp != ((void*)0);
     zcp = uu_list_next(zfs_cases, zcp)) {
  if (zcp->zc_data.zc_pool_guid == pool_guid) {
   pool_found = B_TRUE;
   pool_load = zcp->zc_when;
  }
  if (zcp->zc_data.zc_vdev_guid == vdev_guid)
   break;
 }
 if (pool_found && timeval_earlier(&er_when, &pool_load)) {
  fmd_hdl_debug(hdl, "ignoring pool %llx, "
      "ereport time %lld.%lld, pool load time = %lld.%lld",
      pool_guid, er_when.ertv_sec, er_when.ertv_nsec,
      pool_load.ertv_sec, pool_load.ertv_nsec);
  zfs_stats.old_drops.fmds_value.ui64++;
  return;
 }

 if (!pool_found) {




  libzfs_handle_t *zhdl = fmd_hdl_getspecific(hdl);
  struct load_time_arg la;

  la.lt_guid = pool_guid;
  la.lt_time = &pool_load;
  la.lt_found = B_FALSE;

  if (zhdl != ((void*)0) &&
      zpool_iter(zhdl, zpool_find_load_time, &la) == 0 &&
      la.lt_found == B_TRUE) {
   pool_found = B_TRUE;

   if (timeval_earlier(&er_when, &pool_load)) {
    fmd_hdl_debug(hdl, "ignoring pool %llx, "
        "ereport time %lld.%lld, "
        "pool load time = %lld.%lld",
        pool_guid, er_when.ertv_sec,
        er_when.ertv_nsec, pool_load.ertv_sec,
        pool_load.ertv_nsec);
    zfs_stats.old_drops.fmds_value.ui64++;
    return;
   }
  }
 }

 if (zcp == ((void*)0)) {
  fmd_case_t *cs;
  zfs_case_data_t data = { 0 };





  if (isresource) {
   zfs_stats.resource_drops.fmds_value.ui64++;
   fmd_hdl_debug(hdl, "discarding '%s for vdev %llu",
       class, vdev_guid);
   return;
  }




  if (strcmp(class,
      ZFS_MAKE_EREPORT(FM_EREPORT_ZFS_DATA)) == 0 ||
      strcmp(class,
      ZFS_MAKE_EREPORT(FM_EREPORT_ZFS_CONFIG_CACHE_WRITE)) == 0 ||
      strcmp(class,
      ZFS_MAKE_EREPORT(FM_EREPORT_ZFS_DELAY)) == 0) {
   zfs_stats.resource_drops.fmds_value.ui64++;
   return;
  }




  cs = fmd_case_open(hdl, ((void*)0));

  fmd_hdl_debug(hdl, "opening case for vdev %llu due to '%s'",
      vdev_guid, class);






  fmd_buf_create(hdl, cs, CASE_DATA, sizeof (zfs_case_data_t));

  data.zc_version = CASE_DATA_VERSION_SERD;
  data.zc_ena = ena;
  data.zc_pool_guid = pool_guid;
  data.zc_vdev_guid = vdev_guid;
  data.zc_pool_state = (int)pool_state;

  fmd_buf_write(hdl, cs, CASE_DATA, &data, sizeof (data));

  zcp = zfs_case_unserialize(hdl, cs);
  assert(zcp != ((void*)0));
  if (pool_found)
   zcp->zc_when = pool_load;
 }

 if (isresource) {
  fmd_hdl_debug(hdl, "resource event '%s'", class);

  if (fmd_nvl_class_match(hdl, nvl,
      ZFS_MAKE_RSRC(FM_RESOURCE_AUTOREPLACE))) {







   fmd_case_close(hdl, zcp->zc_case);
  } else if (fmd_nvl_class_match(hdl, nvl,
      ZFS_MAKE_RSRC(FM_RESOURCE_REMOVED))) {
   if (zcp->zc_data.zc_has_remove_timer) {
    fmd_timer_remove(hdl, zcp->zc_remove_timer);
    zcp->zc_data.zc_has_remove_timer = 0;
    zfs_case_serialize(hdl, zcp);
   }
   if (zcp->zc_data.zc_serd_io[0] != '\0')
    fmd_serd_reset(hdl, zcp->zc_data.zc_serd_io);
   if (zcp->zc_data.zc_serd_checksum[0] != '\0')
    fmd_serd_reset(hdl,
        zcp->zc_data.zc_serd_checksum);
  } else if (fmd_nvl_class_match(hdl, nvl,
      ZFS_MAKE_RSRC(FM_RESOURCE_STATECHANGE))) {
   uint64_t state = 0;

   if (zcp != ((void*)0) &&
       nvlist_lookup_uint64(nvl,
       FM_EREPORT_PAYLOAD_ZFS_VDEV_STATE, &state) == 0 &&
       state == VDEV_STATE_HEALTHY) {
    fmd_hdl_debug(hdl, "closing case after a "
        "device statechange to healthy");
    fmd_case_close(hdl, zcp->zc_case);
   }
  }
  zfs_stats.resource_drops.fmds_value.ui64++;
  return;
 }




 fmd_case_add_ereport(hdl, zcp->zc_case, ep);




 if (fmd_case_solved(hdl, zcp->zc_case))
  return;

 fmd_hdl_debug(hdl, "error event '%s'", class);
 if (fmd_nvl_class_match(hdl, nvl,
     ZFS_MAKE_EREPORT(FM_EREPORT_ZFS_POOL))) {




  for (dcp = uu_list_first(zfs_cases); dcp != ((void*)0);
      dcp = uu_list_next(zfs_cases, dcp)) {
   if (dcp->zc_data.zc_pool_guid ==
       zcp->zc_data.zc_pool_guid &&
       dcp->zc_data.zc_vdev_guid != 0)
    fmd_case_close(hdl, dcp->zc_case);
  }

  zfs_case_solve(hdl, zcp, "fault.fs.zfs.pool", B_TRUE);
 } else if (fmd_nvl_class_match(hdl, nvl,
     ZFS_MAKE_EREPORT(FM_EREPORT_ZFS_LOG_REPLAY))) {



  zfs_case_solve(hdl, zcp, "fault.fs.zfs.log_replay", B_TRUE);
 } else if (fmd_nvl_class_match(hdl, nvl, "ereport.fs.zfs.vdev.*")) {



  zfs_case_solve(hdl, zcp, "fault.fs.zfs.device", B_TRUE);
 } else if (fmd_nvl_class_match(hdl, nvl,
     ZFS_MAKE_EREPORT(FM_EREPORT_ZFS_IO)) ||
     fmd_nvl_class_match(hdl, nvl,
     ZFS_MAKE_EREPORT(FM_EREPORT_ZFS_CHECKSUM)) ||
     fmd_nvl_class_match(hdl, nvl,
     ZFS_MAKE_EREPORT(FM_EREPORT_ZFS_IO_FAILURE)) ||
     fmd_nvl_class_match(hdl, nvl,
     ZFS_MAKE_EREPORT(FM_EREPORT_ZFS_PROBE_FAILURE))) {
  char *failmode = ((void*)0);
  boolean_t checkremove = B_FALSE;
  if (fmd_nvl_class_match(hdl, nvl,
      ZFS_MAKE_EREPORT(FM_EREPORT_ZFS_IO))) {
   if (zcp->zc_data.zc_serd_io[0] == '\0') {
    zfs_serd_name(zcp->zc_data.zc_serd_io,
        pool_guid, vdev_guid, "io");
    fmd_serd_create(hdl, zcp->zc_data.zc_serd_io,
        fmd_prop_get_int32(hdl, "io_N"),
        fmd_prop_get_int64(hdl, "io_T"));
    zfs_case_serialize(hdl, zcp);
   }
   if (fmd_serd_record(hdl, zcp->zc_data.zc_serd_io, ep))
    checkremove = B_TRUE;
  } else if (fmd_nvl_class_match(hdl, nvl,
      ZFS_MAKE_EREPORT(FM_EREPORT_ZFS_CHECKSUM))) {
   if (zcp->zc_data.zc_serd_checksum[0] == '\0') {
    zfs_serd_name(zcp->zc_data.zc_serd_checksum,
        pool_guid, vdev_guid, "checksum");
    fmd_serd_create(hdl,
        zcp->zc_data.zc_serd_checksum,
        fmd_prop_get_int32(hdl, "checksum_N"),
        fmd_prop_get_int64(hdl, "checksum_T"));
    zfs_case_serialize(hdl, zcp);
   }
   if (fmd_serd_record(hdl,
       zcp->zc_data.zc_serd_checksum, ep)) {
    zfs_case_solve(hdl, zcp,
        "fault.fs.zfs.vdev.checksum", B_FALSE);
   }
  } else if (fmd_nvl_class_match(hdl, nvl,
      ZFS_MAKE_EREPORT(FM_EREPORT_ZFS_IO_FAILURE)) &&
      (nvlist_lookup_string(nvl,
      FM_EREPORT_PAYLOAD_ZFS_POOL_FAILMODE, &failmode) == 0) &&
      failmode != ((void*)0)) {
   if (strncmp(failmode, FM_EREPORT_FAILMODE_CONTINUE,
       strlen(FM_EREPORT_FAILMODE_CONTINUE)) == 0) {
    zfs_case_solve(hdl, zcp,
        "fault.fs.zfs.io_failure_continue",
        B_FALSE);
   } else if (strncmp(failmode, FM_EREPORT_FAILMODE_WAIT,
       strlen(FM_EREPORT_FAILMODE_WAIT)) == 0) {
    zfs_case_solve(hdl, zcp,
        "fault.fs.zfs.io_failure_wait", B_FALSE);
   }
  } else if (fmd_nvl_class_match(hdl, nvl,
      ZFS_MAKE_EREPORT(FM_EREPORT_ZFS_PROBE_FAILURE))) {




  }






  if (checkremove) {
   if (zcp->zc_data.zc_has_remove_timer)
    fmd_timer_remove(hdl, zcp->zc_remove_timer);
   zcp->zc_remove_timer = fmd_timer_install(hdl, zcp, ((void*)0),
       zfs_remove_timeout);
   if (!zcp->zc_data.zc_has_remove_timer) {
    zcp->zc_data.zc_has_remove_timer = 1;
    zfs_case_serialize(hdl, zcp);
   }
  }
 }
}
