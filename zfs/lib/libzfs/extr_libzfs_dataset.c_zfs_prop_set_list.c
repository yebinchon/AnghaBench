
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef scalar_t__ zfs_prop_t ;
struct TYPE_17__ {int zfs_name; int zpool_hdl; int zfs_type; int * zfs_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
struct TYPE_18__ {char* member_0; scalar_t__ zc_nvlist_dst_filled; int zc_name; } ;
typedef TYPE_2__ zfs_cmd_t ;
typedef int uint64_t ;
typedef int prop_changelist_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;
typedef int errbuf ;


 scalar_t__ B_FALSE ;
 scalar_t__ ENOSPC ;
 int EZFS_ZONED ;
 int MNTOPT_REMOUNT ;
 int NV_UNIQUE_NAME ;
 int TEXT_DOMAIN ;
 scalar_t__ ZFS_CANMOUNT_OFF ;
 int ZFS_IOC_SET_PROP ;
 scalar_t__ ZFS_PROP_CANMOUNT ;
 scalar_t__ ZFS_PROP_MOUNTPOINT ;
 scalar_t__ ZFS_PROP_VOLSIZE ;
 scalar_t__ ZFS_PROP_ZONED ;
 int assert (int) ;
 int ** calloc (int,int) ;
 int changelist_free (int *) ;
 int * changelist_gather (TYPE_1__*,scalar_t__,int ,int ) ;
 scalar_t__ changelist_haszonedchild (int *) ;
 int changelist_postfix (int *) ;
 int changelist_prefix (int *) ;
 char* dgettext (int ,char*) ;
 scalar_t__ errno ;
 scalar_t__ fnvpair_value_uint64 (int *) ;
 int free (int **) ;
 int get_stats (TYPE_1__*) ;
 scalar_t__ nvlist_add_uint64 (int *,int ,int ) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;
 int * nvlist_next_nvpair (int *,int *) ;
 int nvpair_name (int *) ;
 int snprintf (char*,int,char*,int ) ;
 int strlcpy (int ,int ,int) ;
 int zcmd_alloc_dst_nvlist (int *,TYPE_2__*,int ) ;
 int zcmd_free_nvlists (TYPE_2__*) ;
 scalar_t__ zcmd_read_dst_nvlist (int *,TYPE_2__*,int **) ;
 scalar_t__ zcmd_write_src_nvlist (int *,TYPE_2__*,int *) ;
 int zfs_add_synthetic_resv (TYPE_1__*,int *) ;
 int zfs_error (int *,int ,char*) ;
 int zfs_error_aux (int *,char*) ;
 int zfs_fix_auto_resv (TYPE_1__*,int *) ;
 int zfs_ioctl (int *,int ,TYPE_2__*) ;
 scalar_t__ zfs_is_mounted (TYPE_1__*,int *) ;
 scalar_t__ zfs_is_namespace_prop (scalar_t__) ;
 int zfs_mount (TYPE_1__*,int ,int ) ;
 scalar_t__ zfs_name_to_prop (int ) ;
 int zfs_prop_get_int (TYPE_1__*,scalar_t__) ;
 int zfs_prop_to_name (scalar_t__) ;
 int zfs_setprop_error (int *,scalar_t__,scalar_t__,char*) ;
 int zfs_standard_error (int *,scalar_t__,char*) ;
 int * zfs_valid_proplist (int *,int ,int *,int ,TYPE_1__*,int ,scalar_t__,char*) ;

int
zfs_prop_set_list(zfs_handle_t *zhp, nvlist_t *props)
{
 zfs_cmd_t zc = {"\0"};
 int ret = -1;
 prop_changelist_t **cls = ((void*)0);
 int cl_idx;
 char errbuf[1024];
 libzfs_handle_t *hdl = zhp->zfs_hdl;
 nvlist_t *nvl;
 int nvl_len = 0;
 int added_resv = 0;
 zfs_prop_t prop = 0;
 nvpair_t *elem;

 (void) snprintf(errbuf, sizeof (errbuf),
     dgettext(TEXT_DOMAIN, "cannot set property for '%s'"),
     zhp->zfs_name);

 if ((nvl = zfs_valid_proplist(hdl, zhp->zfs_type, props,
     zfs_prop_get_int(zhp, ZFS_PROP_ZONED), zhp, zhp->zpool_hdl,
     B_FALSE, errbuf)) == ((void*)0))
  goto error;





 for (elem = nvlist_next_nvpair(nvl, ((void*)0));
     elem != ((void*)0);
     elem = nvlist_next_nvpair(nvl, elem)) {
  if (zfs_name_to_prop(nvpair_name(elem)) == ZFS_PROP_VOLSIZE &&
      (added_resv = zfs_add_synthetic_resv(zhp, nvl)) == -1) {
   goto error;
  }
 }

 if (added_resv != 1 &&
     (added_resv = zfs_fix_auto_resv(zhp, nvl)) == -1) {
  goto error;
 }





 for (elem = nvlist_next_nvpair(nvl, ((void*)0));
     elem != ((void*)0);
     elem = nvlist_next_nvpair(nvl, elem))
  nvl_len++;
 if ((cls = calloc(nvl_len, sizeof (prop_changelist_t *))) == ((void*)0))
  goto error;

 cl_idx = 0;
 for (elem = nvlist_next_nvpair(nvl, ((void*)0));
     elem != ((void*)0);
     elem = nvlist_next_nvpair(nvl, elem)) {

  prop = zfs_name_to_prop(nvpair_name(elem));

  assert(cl_idx < nvl_len);





  if (prop != ZFS_PROP_CANMOUNT ||
      (fnvpair_value_uint64(elem) == ZFS_CANMOUNT_OFF &&
      zfs_is_mounted(zhp, ((void*)0)))) {
   cls[cl_idx] = changelist_gather(zhp, prop, 0, 0);
   if (cls[cl_idx] == ((void*)0))
    goto error;
  }

  if (prop == ZFS_PROP_MOUNTPOINT &&
      changelist_haszonedchild(cls[cl_idx])) {
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "child dataset with inherited mountpoint is used "
       "in a non-global zone"));
   ret = zfs_error(hdl, EZFS_ZONED, errbuf);
   goto error;
  }

  if (cls[cl_idx] != ((void*)0) &&
      (ret = changelist_prefix(cls[cl_idx])) != 0)
   goto error;

  cl_idx++;
 }
 assert(cl_idx == nvl_len);




 (void) strlcpy(zc.zc_name, zhp->zfs_name, sizeof (zc.zc_name));

 if ((ret = zcmd_write_src_nvlist(hdl, &zc, nvl)) != 0 ||
     (ret = zcmd_alloc_dst_nvlist(hdl, &zc, 0)) != 0)
  goto error;

 ret = zfs_ioctl(hdl, ZFS_IOC_SET_PROP, &zc);

 if (ret != 0) {
  if (zc.zc_nvlist_dst_filled == B_FALSE) {
   (void) zfs_standard_error(hdl, errno, errbuf);
   goto error;
  }


  nvlist_t *errorprops = ((void*)0);
  if (zcmd_read_dst_nvlist(hdl, &zc, &errorprops) != 0)
   goto error;
  for (nvpair_t *elem = nvlist_next_nvpair(errorprops, ((void*)0));
      elem != ((void*)0);
      elem = nvlist_next_nvpair(errorprops, elem)) {
   prop = zfs_name_to_prop(nvpair_name(elem));
   zfs_setprop_error(hdl, prop, errno, errbuf);
  }
  nvlist_free(errorprops);

  if (added_resv && errno == ENOSPC) {

   uint64_t old_volsize = zfs_prop_get_int(zhp,
       ZFS_PROP_VOLSIZE);
   nvlist_free(nvl);
   nvl = ((void*)0);
   zcmd_free_nvlists(&zc);

   if (nvlist_alloc(&nvl, NV_UNIQUE_NAME, 0) != 0)
    goto error;
   if (nvlist_add_uint64(nvl,
       zfs_prop_to_name(ZFS_PROP_VOLSIZE),
       old_volsize) != 0)
    goto error;
   if (zcmd_write_src_nvlist(hdl, &zc, nvl) != 0)
    goto error;
   (void) zfs_ioctl(hdl, ZFS_IOC_SET_PROP, &zc);
  }
 } else {
  for (cl_idx = 0; cl_idx < nvl_len; cl_idx++) {
   if (cls[cl_idx] != ((void*)0)) {
    int clp_err = changelist_postfix(cls[cl_idx]);
    if (clp_err != 0)
     ret = clp_err;
   }
  }

  if (ret == 0) {




   (void) get_stats(zhp);






   if (zfs_is_namespace_prop(prop) &&
       zfs_is_mounted(zhp, ((void*)0)))
    ret = zfs_mount(zhp, MNTOPT_REMOUNT, 0);
  }
 }

error:
 nvlist_free(nvl);
 zcmd_free_nvlists(&zc);
 if (cls != ((void*)0)) {
  for (cl_idx = 0; cl_idx < nvl_len; cl_idx++) {
   if (cls[cl_idx] != ((void*)0))
    changelist_free(cls[cl_idx]);
  }
  free(cls);
 }
 return (ret);
}
