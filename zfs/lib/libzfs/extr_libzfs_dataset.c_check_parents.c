
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zfs_handle_t ;
struct TYPE_3__ {char* member_0; char* zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int uint64_t ;
typedef int parent ;
typedef int libzfs_handle_t ;
typedef int errbuf ;
typedef scalar_t__ boolean_t ;


 scalar_t__ ENOENT ;
 scalar_t__ EPERM ;
 int EZFS_BADTYPE ;
 int EZFS_INVALIDNAME ;
 int EZFS_NOENT ;
 scalar_t__ GLOBAL_ZONEID ;
 int TEXT_DOMAIN ;
 int ZFS_IOC_OBJSET_STATS ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int ZFS_PROP_ZONED ;
 scalar_t__ ZFS_TYPE_FILESYSTEM ;
 char* dgettext (int ,char*) ;
 scalar_t__ errno ;
 scalar_t__ getzoneid () ;
 int * make_dataset_handle (int *,char*) ;
 scalar_t__ parent_name (char const*,char*,int) ;
 int snprintf (char*,int,char*,char const*) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 int strncpy (char*,char*,int) ;
 int zfs_close (int *) ;
 int zfs_error (int *,int ,char*) ;
 int zfs_error_aux (int *,char*,...) ;
 scalar_t__ zfs_get_type (int *) ;
 scalar_t__ zfs_ioctl (int *,int ,TYPE_1__*) ;
 int zfs_prop_get_int (int *,int ) ;
 int zfs_standard_error (int *,scalar_t__,char*) ;

__attribute__((used)) static int
check_parents(libzfs_handle_t *hdl, const char *path, uint64_t *zoned,
    boolean_t accept_ancestor, int *prefixlen)
{
 zfs_cmd_t zc = {"\0"};
 char parent[ZFS_MAX_DATASET_NAME_LEN];
 char *slash;
 zfs_handle_t *zhp;
 char errbuf[1024];
 uint64_t is_zoned;

 (void) snprintf(errbuf, sizeof (errbuf),
     dgettext(TEXT_DOMAIN, "cannot create '%s'"), path);


 if (parent_name(path, parent, sizeof (parent)) != 0) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "missing dataset name"));
  return (zfs_error(hdl, EZFS_INVALIDNAME, errbuf));
 }


 if ((slash = strchr(parent, '/')) == ((void*)0))
  slash = parent + strlen(parent);
 (void) strncpy(zc.zc_name, parent, slash - parent);
 zc.zc_name[slash - parent] = '\0';
 if (zfs_ioctl(hdl, ZFS_IOC_OBJSET_STATS, &zc) != 0 &&
     errno == ENOENT) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "no such pool '%s'"), zc.zc_name);
  return (zfs_error(hdl, EZFS_NOENT, errbuf));
 }


 while ((zhp = make_dataset_handle(hdl, parent)) == ((void*)0)) {
  if (errno == ENOENT && accept_ancestor) {



   if (parent_name(parent, parent, sizeof (parent)) != 0) {
    zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
        "no such pool '%s'"), zc.zc_name);
    return (zfs_error(hdl, EZFS_NOENT, errbuf));
   }
  } else if (errno == ENOENT) {
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "parent does not exist"));
   return (zfs_error(hdl, EZFS_NOENT, errbuf));
  } else
   return (zfs_standard_error(hdl, errno, errbuf));
 }

 is_zoned = zfs_prop_get_int(zhp, ZFS_PROP_ZONED);
 if (zoned != ((void*)0))
  *zoned = is_zoned;


 if (getzoneid() != GLOBAL_ZONEID && !is_zoned) {
  (void) zfs_standard_error(hdl, EPERM, errbuf);
  zfs_close(zhp);
  return (-1);
 }


 if (zfs_get_type(zhp) != ZFS_TYPE_FILESYSTEM) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "parent is not a filesystem"));
  (void) zfs_error(hdl, EZFS_BADTYPE, errbuf);
  zfs_close(zhp);
  return (-1);
 }

 zfs_close(zhp);
 if (prefixlen != ((void*)0))
  *prefixlen = strlen(parent);
 return (0);
}
