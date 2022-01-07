
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int zprop_source_t ;
typedef size_t zfs_share_proto_t ;
struct TYPE_12__ {int zfs_name; TYPE_2__* zfs_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
typedef int shareopts ;
typedef int * sa_share_t ;
typedef int mountpoint ;
struct TYPE_13__ {int libzfs_sharehdl; int libzfs_shareflags; } ;
typedef TYPE_2__ libzfs_handle_t ;
struct TYPE_11__ {int p_share_err; int p_name; int p_prop; } ;


 int B_FALSE ;
 int EZFS_SHARENFSFAILED ;
 size_t PROTO_END ;
 int SA_INIT_SHARE_API ;
 int SA_OK ;
 int TEXT_DOMAIN ;
 int ZFSSHARE_MISS ;
 int ZFS_MAXPROPLEN ;
 int ZFS_PROP_ZONED ;
 int dgettext (int ,char*) ;
 TYPE_10__* proto_table ;
 int sa_enable_share (int *,int ) ;
 int sa_errorstr (int) ;
 int * sa_find_share (int ,char*) ;
 int sa_zfs_process_share (int ,int *,int *,char*,int ,int ,char*,char*,int ) ;
 scalar_t__ strcmp (char*,char*) ;
 int zfs_error_fmt (TYPE_2__*,int ,int ,int ,...) ;
 int zfs_get_name (TYPE_1__*) ;
 int zfs_init_libshare (TYPE_2__*,int ) ;
 int zfs_is_mountable (TYPE_1__*,char*,int,int *,int ) ;
 scalar_t__ zfs_prop_get (TYPE_1__*,int ,char*,int,int *,char*,int,int ) ;
 scalar_t__ zfs_prop_get_int (TYPE_1__*,int ) ;

int
zfs_share_proto(zfs_handle_t *zhp, zfs_share_proto_t *proto)
{
 char mountpoint[ZFS_MAXPROPLEN];
 char shareopts[ZFS_MAXPROPLEN];
 char sourcestr[ZFS_MAXPROPLEN];
 libzfs_handle_t *hdl = zhp->zfs_hdl;
 sa_share_t share;
 zfs_share_proto_t *curr_proto;
 zprop_source_t sourcetype;
 int err, ret;

 if (!zfs_is_mountable(zhp, mountpoint, sizeof (mountpoint), ((void*)0), 0))
  return (0);

 for (curr_proto = proto; *curr_proto != PROTO_END; curr_proto++) {



  if (zfs_prop_get(zhp, proto_table[*curr_proto].p_prop,
      shareopts, sizeof (shareopts), &sourcetype, sourcestr,
      ZFS_MAXPROPLEN, B_FALSE) != 0 ||
      strcmp(shareopts, "off") == 0)
   continue;

  ret = zfs_init_libshare(hdl, SA_INIT_SHARE_API);
  if (ret != SA_OK) {
   (void) zfs_error_fmt(hdl, EZFS_SHARENFSFAILED,
       dgettext(TEXT_DOMAIN, "cannot share '%s': %s"),
       zfs_get_name(zhp), sa_errorstr(ret));
   return (-1);
  }







  if (zfs_prop_get_int(zhp, ZFS_PROP_ZONED))
   continue;

  share = sa_find_share(hdl->libzfs_sharehdl, mountpoint);
  if (share == ((void*)0)) {
   if (sa_zfs_process_share(hdl->libzfs_sharehdl,
       ((void*)0), ((void*)0), mountpoint,
       proto_table[*curr_proto].p_name, sourcetype,
       shareopts, sourcestr, zhp->zfs_name) != SA_OK) {
    (void) zfs_error_fmt(hdl,
        proto_table[*curr_proto].p_share_err,
        dgettext(TEXT_DOMAIN, "cannot share '%s'"),
        zfs_get_name(zhp));
    return (-1);
   }
   hdl->libzfs_shareflags |= ZFSSHARE_MISS;
   share = sa_find_share(hdl->libzfs_sharehdl,
       mountpoint);
  }
  if (share != ((void*)0)) {
   err = sa_enable_share(share,
       proto_table[*curr_proto].p_name);
   if (err != SA_OK) {
    (void) zfs_error_fmt(hdl,
        proto_table[*curr_proto].p_share_err,
        dgettext(TEXT_DOMAIN, "cannot share '%s'"),
        zfs_get_name(zhp));
    return (-1);
   }
  } else {
   (void) zfs_error_fmt(hdl,
       proto_table[*curr_proto].p_share_err,
       dgettext(TEXT_DOMAIN, "cannot share '%s'"),
       zfs_get_name(zhp));
   return (-1);
  }

 }
 return (0);
}
