
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zpool_handle_t ;
struct TYPE_4__ {int * zrd_hdl; } ;
typedef TYPE_1__ zfs_retire_data_t ;
typedef int vdev_aux_t ;
typedef size_t uint_t ;
typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;
typedef int fmd_hdl_t ;
typedef int fmd_event_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int FM_EREPORT_PAYLOAD_ZFS_POOL_GUID ;
 int FM_EREPORT_PAYLOAD_ZFS_VDEV_GUID ;
 int FM_EREPORT_PAYLOAD_ZFS_VDEV_STATE ;
 int FM_EREPORT_PAYLOAD_ZFS_VDEV_TYPE ;
 int FM_FAULT_RESOURCE ;
 int FM_FMRI_SCHEME ;
 char* FM_FMRI_SCHEME_ZFS ;
 int FM_FMRI_ZFS_POOL ;
 int FM_FMRI_ZFS_VDEV ;
 char* FM_LIST_REPAIRED_CLASS ;
 char* FM_LIST_RESOLVED_CLASS ;
 int FM_SUSPECT_FAULT_LIST ;
 int FM_SUSPECT_RETIRE ;
 int FM_SUSPECT_UUID ;
 int VDEV_AUX_ERR_EXCEEDED ;
 scalar_t__ VDEV_STATE_HEALTHY ;
 char* VDEV_TYPE_L2CACHE ;
 int * find_by_guid (int *,scalar_t__,scalar_t__,int **) ;
 int fmd_case_uuresolved (int *,char*) ;
 int fmd_hdl_debug (int *,char*,char const*,...) ;
 TYPE_1__* fmd_hdl_getspecific (int *) ;
 scalar_t__ fmd_nvl_class_match (int *,int *,char*) ;
 int fmd_prop_get_int32 (int *,char*) ;
 int free (char*) ;
 scalar_t__ nvlist_lookup_boolean_value (int *,int ,scalar_t__*) ;
 scalar_t__ nvlist_lookup_nvlist (int *,int ,int **) ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,size_t*) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 scalar_t__ replace_with_spare (int *,int *,int *) ;
 scalar_t__ strcmp (char const*,char*) ;
 int zfs_retire_clear_data (int *,TYPE_1__*) ;
 int zfs_vdev_repair (int *,int *) ;
 int zpool_clear (int *,int *,int *) ;
 int zpool_close (int *) ;
 int zpool_get_name (int *) ;
 int zpool_vdev_clear (int *,scalar_t__) ;
 int zpool_vdev_degrade (int *,scalar_t__,int ) ;
 int zpool_vdev_fault (int *,scalar_t__,int ) ;
 char* zpool_vdev_name (int *,int *,int *,scalar_t__) ;
 int zpool_vdev_offline (int *,char*,scalar_t__) ;

__attribute__((used)) static void
zfs_retire_recv(fmd_hdl_t *hdl, fmd_event_t *ep, nvlist_t *nvl,
    const char *class)
{
 uint64_t pool_guid, vdev_guid;
 zpool_handle_t *zhp;
 nvlist_t *resource, *fault;
 nvlist_t **faults;
 uint_t f, nfaults;
 zfs_retire_data_t *zdp = fmd_hdl_getspecific(hdl);
 libzfs_handle_t *zhdl = zdp->zrd_hdl;
 boolean_t fault_device, degrade_device;
 boolean_t is_repair;
 char *scheme;
 nvlist_t *vdev = ((void*)0);
 char *uuid;
 int repair_done = 0;
 boolean_t retire;
 boolean_t is_disk;
 vdev_aux_t aux;
 uint64_t state = 0;

 fmd_hdl_debug(hdl, "zfs_retire_recv: '%s'", class);






 if (strcmp(class, "resource.fs.zfs.removed") == 0) {
  char *devtype;
  char *devname;

  if (nvlist_lookup_uint64(nvl, FM_EREPORT_PAYLOAD_ZFS_POOL_GUID,
      &pool_guid) != 0 ||
      nvlist_lookup_uint64(nvl, FM_EREPORT_PAYLOAD_ZFS_VDEV_GUID,
      &vdev_guid) != 0)
   return;

  if ((zhp = find_by_guid(zhdl, pool_guid, vdev_guid,
      &vdev)) == ((void*)0))
   return;

  devname = zpool_vdev_name(((void*)0), zhp, vdev, B_FALSE);


  if (nvlist_lookup_string(nvl, FM_EREPORT_PAYLOAD_ZFS_VDEV_TYPE,
      &devtype) == 0 && strcmp(devtype, VDEV_TYPE_L2CACHE) == 0) {
   fmd_hdl_debug(hdl, "zpool_vdev_offline '%s'", devname);
   zpool_vdev_offline(zhp, devname, B_TRUE);
  } else if (!fmd_prop_get_int32(hdl, "spare_on_remove") ||
      replace_with_spare(hdl, zhp, vdev) == B_FALSE) {

   fmd_hdl_debug(hdl, "zpool_vdev_offline '%s'", devname);
   zpool_vdev_offline(zhp, devname, B_TRUE);
  }

  free(devname);
  zpool_close(zhp);
  return;
 }

 if (strcmp(class, FM_LIST_RESOLVED_CLASS) == 0)
  return;





 if (strcmp(class, "resource.fs.zfs.statechange") == 0 &&
     nvlist_lookup_uint64(nvl, FM_EREPORT_PAYLOAD_ZFS_VDEV_STATE,
     &state) == 0 && state == VDEV_STATE_HEALTHY) {
  zfs_vdev_repair(hdl, nvl);
  return;
 }
 if (strcmp(class, "sysevent.fs.zfs.vdev_remove") == 0) {
  zfs_vdev_repair(hdl, nvl);
  return;
 }

 zfs_retire_clear_data(hdl, zdp);

 if (strcmp(class, FM_LIST_REPAIRED_CLASS) == 0)
  is_repair = B_TRUE;
 else
  is_repair = B_FALSE;




 if (nvlist_lookup_nvlist_array(nvl, FM_SUSPECT_FAULT_LIST,
     &faults, &nfaults) != 0)
  return;

 for (f = 0; f < nfaults; f++) {
  fault = faults[f];

  fault_device = B_FALSE;
  degrade_device = B_FALSE;
  is_disk = B_FALSE;

  if (nvlist_lookup_boolean_value(fault, FM_SUSPECT_RETIRE,
      &retire) == 0 && retire == 0)
   continue;







  if (fmd_nvl_class_match(hdl, fault, "fault.fs.zfs.vdev.io")) {
   fault_device = B_TRUE;
  } else if (fmd_nvl_class_match(hdl, fault,
      "fault.fs.zfs.vdev.checksum")) {
   degrade_device = B_TRUE;
  } else if (fmd_nvl_class_match(hdl, fault,
      "fault.fs.zfs.device")) {
   fault_device = B_FALSE;
  } else if (fmd_nvl_class_match(hdl, fault, "fault.io.*")) {
   is_disk = B_TRUE;
   fault_device = B_TRUE;
  } else {
   continue;
  }

  if (is_disk) {
   continue;
  } else {




   if (nvlist_lookup_nvlist(fault, FM_FAULT_RESOURCE,
       &resource) != 0 ||
       nvlist_lookup_string(resource, FM_FMRI_SCHEME,
       &scheme) != 0)
    continue;

   if (strcmp(scheme, FM_FMRI_SCHEME_ZFS) != 0)
    continue;

   if (nvlist_lookup_uint64(resource, FM_FMRI_ZFS_POOL,
       &pool_guid) != 0)
    continue;

   if (nvlist_lookup_uint64(resource, FM_FMRI_ZFS_VDEV,
       &vdev_guid) != 0) {
    if (is_repair)
     vdev_guid = 0;
    else
     continue;
   }

   if ((zhp = find_by_guid(zhdl, pool_guid, vdev_guid,
       &vdev)) == ((void*)0))
    continue;

   aux = VDEV_AUX_ERR_EXCEEDED;
  }

  if (vdev_guid == 0) {



   fmd_hdl_debug(hdl, "zpool_clear of pool '%s'",
       zpool_get_name(zhp));
   (void) zpool_clear(zhp, ((void*)0), ((void*)0));
   zpool_close(zhp);
   continue;
  }





  if (is_repair) {
   repair_done = 1;
   fmd_hdl_debug(hdl, "zpool_clear of pool '%s' vdev %llu",
       zpool_get_name(zhp), vdev_guid);
   (void) zpool_vdev_clear(zhp, vdev_guid);
   zpool_close(zhp);
   continue;
  }




  if (fault_device)
   (void) zpool_vdev_fault(zhp, vdev_guid, aux);
  if (degrade_device)
   (void) zpool_vdev_degrade(zhp, vdev_guid, aux);

  if (fault_device || degrade_device)
   fmd_hdl_debug(hdl, "zpool_vdev_%s: vdev %llu on '%s'",
       fault_device ? "fault" : "degrade", vdev_guid,
       zpool_get_name(zhp));




  (void) replace_with_spare(hdl, zhp, vdev);
  zpool_close(zhp);
 }

 if (strcmp(class, FM_LIST_REPAIRED_CLASS) == 0 && repair_done &&
     nvlist_lookup_string(nvl, FM_SUSPECT_UUID, &uuid) == 0)
  fmd_case_uuresolved(hdl, uuid);
}
