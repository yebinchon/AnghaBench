
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int zfs_type_t ;
struct TYPE_7__ {scalar_t__ zfs_type; int * zfs_hdl; int zfs_name; int zpool_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
typedef int uint64_t ;
typedef int parent ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;
typedef int errbuf ;


 int B_FALSE ;
 int B_TRUE ;


 int EZFS_CROSSTARGET ;
 int EZFS_CRYPTOFAILED ;
 int EZFS_INVALIDNAME ;
 int EZFS_NOENT ;
 int TEXT_DOMAIN ;
 scalar_t__ ZFS_IS_VOLUME (TYPE_1__*) ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int ZFS_TYPE_FILESYSTEM ;
 scalar_t__ ZFS_TYPE_SNAPSHOT ;
 int ZFS_TYPE_VOLUME ;
 int assert (int) ;
 scalar_t__ check_parents (int *,char const*,int *,int ,int *) ;
 char* dgettext (int ,char*) ;
 int errno ;
 int lzc_clone (char const*,int ,int *) ;
 int nvlist_free (int *) ;
 int parent_name (char const*,char*,int) ;
 int snprintf (char*,int,char*,char const*) ;
 scalar_t__ zfs_crypto_clone_check (int *,TYPE_1__*,char*,int *) ;
 int zfs_error (int *,int ,char*) ;
 int zfs_error_aux (int *,char*,...) ;
 int zfs_fix_auto_resv (TYPE_1__*,int *) ;
 int zfs_standard_error (int *,int,char*) ;
 int * zfs_valid_proplist (int *,int ,int *,int ,TYPE_1__*,int ,int ,char*) ;
 int zfs_validate_name (int *,char const*,int ,int ) ;

int
zfs_clone(zfs_handle_t *zhp, const char *target, nvlist_t *props)
{
 char parent[ZFS_MAX_DATASET_NAME_LEN];
 int ret;
 char errbuf[1024];
 libzfs_handle_t *hdl = zhp->zfs_hdl;
 uint64_t zoned;

 assert(zhp->zfs_type == ZFS_TYPE_SNAPSHOT);

 (void) snprintf(errbuf, sizeof (errbuf), dgettext(TEXT_DOMAIN,
     "cannot create '%s'"), target);


 if (!zfs_validate_name(hdl, target, ZFS_TYPE_FILESYSTEM, B_TRUE))
  return (zfs_error(hdl, EZFS_INVALIDNAME, errbuf));


 if (check_parents(hdl, target, &zoned, B_FALSE, ((void*)0)) != 0)
  return (-1);

 (void) parent_name(target, parent, sizeof (parent));



 if (props) {
  zfs_type_t type;

  if (ZFS_IS_VOLUME(zhp)) {
   type = ZFS_TYPE_VOLUME;
  } else {
   type = ZFS_TYPE_FILESYSTEM;
  }
  if ((props = zfs_valid_proplist(hdl, type, props, zoned,
      zhp, zhp->zpool_hdl, B_TRUE, errbuf)) == ((void*)0))
   return (-1);
  if (zfs_fix_auto_resv(zhp, props) == -1) {
   nvlist_free(props);
   return (-1);
  }
 }

 if (zfs_crypto_clone_check(hdl, zhp, parent, props) != 0) {
  nvlist_free(props);
  return (zfs_error(hdl, EZFS_CRYPTOFAILED, errbuf));
 }

 ret = lzc_clone(target, zhp->zfs_name, props);
 nvlist_free(props);

 if (ret != 0) {
  switch (errno) {

  case 129:
   zfs_error_aux(zhp->zfs_hdl, dgettext(TEXT_DOMAIN,
       "no such parent '%s'"), parent);
   return (zfs_error(zhp->zfs_hdl, EZFS_NOENT, errbuf));

  case 128:
   zfs_error_aux(zhp->zfs_hdl, dgettext(TEXT_DOMAIN,
       "source and target pools differ"));
   return (zfs_error(zhp->zfs_hdl, EZFS_CROSSTARGET,
       errbuf));

  default:
   return (zfs_standard_error(zhp->zfs_hdl, errno,
       errbuf));
  }
 }

 return (ret);
}
