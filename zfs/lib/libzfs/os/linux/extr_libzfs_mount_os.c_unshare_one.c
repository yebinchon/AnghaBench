
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t zfs_share_proto_t ;
typedef int * sa_share_t ;
struct TYPE_7__ {int libzfs_sharehdl; } ;
typedef TYPE_1__ libzfs_handle_t ;
struct TYPE_8__ {int p_unshare_err; int p_name; } ;


 int SA_INIT_SHARE_API ;
 int SA_OK ;
 int TEXT_DOMAIN ;
 int dgettext (int ,char*) ;
 int free (char*) ;
 TYPE_6__* proto_table ;
 int sa_disable_share (int *,int ) ;
 int sa_errorstr (int) ;
 int * sa_find_share (int ,char*) ;
 int zfs_error_fmt (TYPE_1__*,int ,int ,char const*,...) ;
 int zfs_init_libshare (TYPE_1__*,int ) ;
 char* zfs_strdup (TYPE_1__*,char const*) ;

int
unshare_one(libzfs_handle_t *hdl, const char *name, const char *mountpoint,
    zfs_share_proto_t proto)
{
 sa_share_t share;
 int err;
 char *mntpt;





 mntpt = zfs_strdup(hdl, mountpoint);


 if ((err = zfs_init_libshare(hdl, SA_INIT_SHARE_API)) != SA_OK) {
  free(mntpt);
  return (zfs_error_fmt(hdl, proto_table[proto].p_unshare_err,
      dgettext(TEXT_DOMAIN, "cannot unshare '%s': %s"),
      name, sa_errorstr(err)));
 }

 share = sa_find_share(hdl->libzfs_sharehdl, mntpt);
 free(mntpt);

 if (share != ((void*)0)) {
  err = sa_disable_share(share, proto_table[proto].p_name);
  if (err != SA_OK) {
   return (zfs_error_fmt(hdl,
       proto_table[proto].p_unshare_err,
       dgettext(TEXT_DOMAIN, "cannot unshare '%s': %s"),
       name, sa_errorstr(err)));
  }
 } else {
  return (zfs_error_fmt(hdl, proto_table[proto].p_unshare_err,
      dgettext(TEXT_DOMAIN, "cannot unshare '%s': not found"),
      name));
 }
 return (0);
}
