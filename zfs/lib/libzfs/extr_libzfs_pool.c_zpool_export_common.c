
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int zpool_hdl; int zpool_name; } ;
typedef TYPE_1__ zpool_handle_t ;
struct TYPE_6__ {char* member_0; scalar_t__ zc_history; void* zc_guid; void* zc_cookie; int zc_name; } ;
typedef TYPE_2__ zfs_cmd_t ;
typedef scalar_t__ uint64_t ;
typedef int msg ;
typedef void* boolean_t ;



 int EZFS_ACTIVE_SPARE ;
 int TEXT_DOMAIN ;
 int ZFS_IOC_POOL_EXPORT ;
 char* dgettext (int ,char*) ;
 int errno ;
 int snprintf (char*,int,char*,int ) ;
 int strlcpy (int ,int ,int) ;
 int zfs_error (int ,int ,char*) ;
 int zfs_error_aux (int ,char*,int ,int ) ;
 scalar_t__ zfs_ioctl (int ,int ,TYPE_2__*) ;
 int zpool_standard_error_fmt (int ,int,char*) ;

__attribute__((used)) static int
zpool_export_common(zpool_handle_t *zhp, boolean_t force, boolean_t hardforce,
    const char *log_str)
{
 zfs_cmd_t zc = {"\0"};
 char msg[1024];

 (void) snprintf(msg, sizeof (msg), dgettext(TEXT_DOMAIN,
     "cannot export '%s'"), zhp->zpool_name);

 (void) strlcpy(zc.zc_name, zhp->zpool_name, sizeof (zc.zc_name));
 zc.zc_cookie = force;
 zc.zc_guid = hardforce;
 zc.zc_history = (uint64_t)(uintptr_t)log_str;

 if (zfs_ioctl(zhp->zpool_hdl, ZFS_IOC_POOL_EXPORT, &zc) != 0) {
  switch (errno) {
  case 128:
   zfs_error_aux(zhp->zpool_hdl, dgettext(TEXT_DOMAIN,
       "use '-f' to override the following errors:\n"
       "'%s' has an active shared spare which could be"
       " used by other pools once '%s' is exported."),
       zhp->zpool_name, zhp->zpool_name);
   return (zfs_error(zhp->zpool_hdl, EZFS_ACTIVE_SPARE,
       msg));
  default:
   return (zpool_standard_error_fmt(zhp->zpool_hdl, errno,
       msg));
  }
 }

 return (0);
}
