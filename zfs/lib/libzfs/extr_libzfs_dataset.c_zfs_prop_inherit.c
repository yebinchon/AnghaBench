
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ zfs_prop_t ;
struct TYPE_10__ {char const* zfs_name; int * zfs_hdl; int zfs_type; } ;
typedef TYPE_1__ zfs_handle_t ;
struct TYPE_11__ {char* member_0; int zc_value; int zc_name; int zc_cookie; } ;
typedef TYPE_2__ zfs_cmd_t ;
typedef int prop_changelist_t ;
typedef int libzfs_handle_t ;
typedef int errbuf ;
typedef int boolean_t ;


 int B_FALSE ;
 int EZFS_BADPROP ;
 int EZFS_PROPNONINHERIT ;
 int EZFS_PROPREADONLY ;
 int EZFS_PROPTYPE ;
 int EZFS_ZONED ;
 scalar_t__ GLOBAL_ZONEID ;
 int MNTOPT_REMOUNT ;
 int TEXT_DOMAIN ;
 int ZFS_IOC_INHERIT_PROP ;
 scalar_t__ ZFS_PROP_MOUNTPOINT ;
 int ZFS_PROP_ZONED ;
 scalar_t__ ZPROP_INVAL ;
 int changelist_free (int *) ;
 int * changelist_gather (TYPE_1__*,scalar_t__,int ,int ) ;
 scalar_t__ changelist_haszonedchild (int *) ;
 int changelist_postfix (int *) ;
 int changelist_prefix (int *) ;
 char* dgettext (int ,char*) ;
 int errno ;
 int get_stats (TYPE_1__*) ;
 scalar_t__ getzoneid () ;
 int snprintf (char*,int,char*,char const*,char const*) ;
 int strlcpy (int ,char const*,int) ;
 int zfs_error (int *,int ,char*) ;
 int zfs_error_aux (int *,char*) ;
 int zfs_ioctl (int *,int ,TYPE_2__*) ;
 scalar_t__ zfs_is_mounted (TYPE_1__*,int *) ;
 scalar_t__ zfs_is_namespace_prop (scalar_t__) ;
 int zfs_mount (TYPE_1__*,int ,int ) ;
 scalar_t__ zfs_name_to_prop (char const*) ;
 scalar_t__ zfs_prop_get_int (TYPE_1__*,int ) ;
 int zfs_prop_inheritable (scalar_t__) ;
 scalar_t__ zfs_prop_readonly (scalar_t__) ;
 char* zfs_prop_to_name (scalar_t__) ;
 int zfs_prop_user (char const*) ;
 int zfs_prop_valid_for_type (scalar_t__,int ,int ) ;
 int zfs_standard_error (int *,int ,char*) ;

int
zfs_prop_inherit(zfs_handle_t *zhp, const char *propname, boolean_t received)
{
 zfs_cmd_t zc = {"\0"};
 int ret;
 prop_changelist_t *cl;
 libzfs_handle_t *hdl = zhp->zfs_hdl;
 char errbuf[1024];
 zfs_prop_t prop;

 (void) snprintf(errbuf, sizeof (errbuf), dgettext(TEXT_DOMAIN,
     "cannot inherit %s for '%s'"), propname, zhp->zfs_name);

 zc.zc_cookie = received;
 if ((prop = zfs_name_to_prop(propname)) == ZPROP_INVAL) {




  if (!zfs_prop_user(propname)) {
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "invalid property"));
   return (zfs_error(hdl, EZFS_BADPROP, errbuf));
  }

  (void) strlcpy(zc.zc_name, zhp->zfs_name, sizeof (zc.zc_name));
  (void) strlcpy(zc.zc_value, propname, sizeof (zc.zc_value));

  if (zfs_ioctl(zhp->zfs_hdl, ZFS_IOC_INHERIT_PROP, &zc) != 0)
   return (zfs_standard_error(hdl, errno, errbuf));

  return (0);
 }




 if (zfs_prop_readonly(prop))
  return (zfs_error(hdl, EZFS_PROPREADONLY, errbuf));

 if (!zfs_prop_inheritable(prop) && !received)
  return (zfs_error(hdl, EZFS_PROPNONINHERIT, errbuf));




 if (!zfs_prop_valid_for_type(prop, zhp->zfs_type, B_FALSE))
  return (zfs_error(hdl, EZFS_PROPTYPE, errbuf));




 propname = zfs_prop_to_name(prop);
 (void) strlcpy(zc.zc_name, zhp->zfs_name, sizeof (zc.zc_name));
 (void) strlcpy(zc.zc_value, propname, sizeof (zc.zc_value));

 if (prop == ZFS_PROP_MOUNTPOINT && getzoneid() == GLOBAL_ZONEID &&
     zfs_prop_get_int(zhp, ZFS_PROP_ZONED)) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "dataset is used in a non-global zone"));
  return (zfs_error(hdl, EZFS_ZONED, errbuf));
 }




 if ((cl = changelist_gather(zhp, prop, 0, 0)) == ((void*)0))
  return (-1);

 if (prop == ZFS_PROP_MOUNTPOINT && changelist_haszonedchild(cl)) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "child dataset with inherited mountpoint is used "
      "in a non-global zone"));
  ret = zfs_error(hdl, EZFS_ZONED, errbuf);
  goto error;
 }

 if ((ret = changelist_prefix(cl)) != 0)
  goto error;

 if ((ret = zfs_ioctl(zhp->zfs_hdl, ZFS_IOC_INHERIT_PROP, &zc)) != 0) {
  return (zfs_standard_error(hdl, errno, errbuf));
 } else {

  if ((ret = changelist_postfix(cl)) != 0)
   goto error;




  (void) get_stats(zhp);






  if (zfs_is_namespace_prop(prop) &&
      zfs_is_mounted(zhp, ((void*)0)))
   ret = zfs_mount(zhp, MNTOPT_REMOUNT, 0);
 }

error:
 changelist_free(cl);
 return (ret);
}
