
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* zfs_name; int zfs_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
struct TYPE_6__ {char* member_0; char const* zc_name; char const* zc_value; int zc_cookie; } ;
typedef TYPE_2__ zfs_cmd_t ;
typedef int uint64_t ;


 int ZFS_IOC_SPACE_WRITTEN ;
 int assert (int ) ;
 char* strchr (char const*,char) ;
 int strlcat (char const*,char const*,int) ;
 int strlcpy (char const*,char const*,int) ;
 int strlen (char*) ;
 int zfs_ioctl (int ,int ,TYPE_2__*) ;
 int zfs_prop_written (char const*) ;

int
zfs_prop_get_written_int(zfs_handle_t *zhp, const char *propname,
    uint64_t *propvalue)
{
 int err;
 zfs_cmd_t zc = {"\0"};
 const char *snapname;

 (void) strlcpy(zc.zc_name, zhp->zfs_name, sizeof (zc.zc_name));

 assert(zfs_prop_written(propname));
 snapname = propname + strlen("written@");
 if (strchr(snapname, '@') != ((void*)0) || strchr(snapname, '#') != ((void*)0)) {

  (void) strlcpy(zc.zc_value, snapname, sizeof (zc.zc_value));
 } else {

  char *cp;

  (void) strlcpy(zc.zc_value, zhp->zfs_name,
      sizeof (zc.zc_value));
  cp = strchr(zc.zc_value, '@');
  if (cp != ((void*)0))
   *cp = '\0';
  (void) strlcat(zc.zc_value, snapname - 1, sizeof (zc.zc_value));
 }

 err = zfs_ioctl(zhp->zfs_hdl, ZFS_IOC_SPACE_WRITTEN, &zc);
 if (err)
  return (err);

 *propvalue = zc.zc_cookie;
 return (0);
}
