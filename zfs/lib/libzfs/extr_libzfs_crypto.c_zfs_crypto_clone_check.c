
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;
typedef int errbuf ;


 int EINVAL ;
 int TEXT_DOMAIN ;
 int ZFS_PROP_ENCRYPTION ;
 int ZFS_PROP_KEYFORMAT ;
 int ZFS_PROP_KEYLOCATION ;
 int ZFS_PROP_PBKDF2_ITERS ;
 char* dgettext (int ,char*) ;
 scalar_t__ nvlist_exists (int *,int ) ;
 int snprintf (char*,int,char*) ;
 int zfs_error_aux (int *,char*) ;
 int zfs_prop_to_name (int ) ;

int
zfs_crypto_clone_check(libzfs_handle_t *hdl, zfs_handle_t *origin_zhp,
    char *parent_name, nvlist_t *props)
{
 char errbuf[1024];

 (void) snprintf(errbuf, sizeof (errbuf),
     dgettext(TEXT_DOMAIN, "Encryption clone error"));





 if (nvlist_exists(props, zfs_prop_to_name(ZFS_PROP_KEYFORMAT)) ||
     nvlist_exists(props, zfs_prop_to_name(ZFS_PROP_KEYLOCATION)) ||
     nvlist_exists(props, zfs_prop_to_name(ZFS_PROP_ENCRYPTION)) ||
     nvlist_exists(props, zfs_prop_to_name(ZFS_PROP_PBKDF2_ITERS))) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "Encryption properties must inherit from origin dataset."));
  return (EINVAL);
 }

 return (0);
}
