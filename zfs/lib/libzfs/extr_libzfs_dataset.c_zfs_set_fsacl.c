
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ zfs_type; int zfs_name; int * zfs_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
struct TYPE_6__ {char* member_0; size_t zc_nvlist_src_size; uintptr_t zc_nvlist_src; int zc_name; int zc_perm_action; } ;
typedef TYPE_2__ zfs_cmd_t ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;
typedef int errbuf ;
typedef int boolean_t ;





 int EZFS_BADTYPE ;
 int EZFS_BADVERSION ;
 int EZFS_NOENT ;
 int NV_ENCODE_NATIVE ;
 int TEXT_DOMAIN ;
 int ZFS_IOC_SET_FSACL ;
 scalar_t__ ZFS_TYPE_FILESYSTEM ;
 scalar_t__ ZFS_TYPE_VOLUME ;
 int assert (int) ;
 char* dgettext (int ,char*) ;
 int errno ;
 int free (char*) ;
 char* malloc (size_t) ;
 int nvlist_pack (int *,char**,size_t*,int ,int ) ;
 int nvlist_size (int *,size_t*,int ) ;
 int snprintf (char*,int,char*,int ) ;
 int strlcpy (int ,int ,int) ;
 int zfs_error (int *,int ,char*) ;
 int zfs_error_aux (int *,char*) ;
 scalar_t__ zfs_ioctl (int *,int ,TYPE_2__*) ;
 int zfs_standard_error_fmt (int *,int,char*) ;

int
zfs_set_fsacl(zfs_handle_t *zhp, boolean_t un, nvlist_t *nvl)
{
 zfs_cmd_t zc = {"\0"};
 libzfs_handle_t *hdl = zhp->zfs_hdl;
 char *nvbuf;
 char errbuf[1024];
 size_t nvsz;
 int err;

 assert(zhp->zfs_type == ZFS_TYPE_VOLUME ||
     zhp->zfs_type == ZFS_TYPE_FILESYSTEM);

 err = nvlist_size(nvl, &nvsz, NV_ENCODE_NATIVE);
 assert(err == 0);

 nvbuf = malloc(nvsz);

 err = nvlist_pack(nvl, &nvbuf, &nvsz, NV_ENCODE_NATIVE, 0);
 assert(err == 0);

 zc.zc_nvlist_src_size = nvsz;
 zc.zc_nvlist_src = (uintptr_t)nvbuf;
 zc.zc_perm_action = un;

 (void) strlcpy(zc.zc_name, zhp->zfs_name, sizeof (zc.zc_name));

 if (zfs_ioctl(hdl, ZFS_IOC_SET_FSACL, &zc) != 0) {
  (void) snprintf(errbuf, sizeof (errbuf),
      dgettext(TEXT_DOMAIN, "cannot set permissions on '%s'"),
      zc.zc_name);
  switch (errno) {
  case 128:
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "pool must be upgraded"));
   err = zfs_error(hdl, EZFS_BADVERSION, errbuf);
   break;
  case 130:
   err = zfs_error(hdl, EZFS_BADTYPE, errbuf);
   break;
  case 129:
   err = zfs_error(hdl, EZFS_NOENT, errbuf);
   break;
  default:
   err = zfs_standard_error_fmt(hdl, errno, errbuf);
   break;
  }
 }

 free(nvbuf);

 return (err);
}
