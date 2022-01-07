
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zfs_prop_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int TEXT_DOMAIN ;
 scalar_t__ ZFS_PROP_ENCRYPTION ;
 scalar_t__ ZFS_PROP_ORIGIN ;
 scalar_t__ ZFS_PROP_VERSION ;
 scalar_t__ ZFS_PROP_VOLSIZE ;
 scalar_t__ ZPROP_INVAL ;
 int dgettext (int ,char*) ;
 int * nvlist_next_nvpair (int *,int *) ;
 char* nvpair_name (int *) ;
 int zfs_error_aux (int *,int ,char const*) ;
 scalar_t__ zfs_name_to_prop (char const*) ;
 scalar_t__ zfs_prop_encryption_key_param (scalar_t__) ;
 scalar_t__ zfs_prop_readonly (scalar_t__) ;
 int zfs_prop_user (char const*) ;

__attribute__((used)) static boolean_t
zfs_receive_checkprops(libzfs_handle_t *hdl, nvlist_t *props,
    const char *errbuf)
{
 nvpair_t *nvp;
 zfs_prop_t prop;
 const char *name;

 nvp = ((void*)0);
 while ((nvp = nvlist_next_nvpair(props, nvp)) != ((void*)0)) {
  name = nvpair_name(nvp);
  prop = zfs_name_to_prop(name);

  if (prop == ZPROP_INVAL) {
   if (!zfs_prop_user(name)) {
    zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
        "invalid property '%s'"), name);
    return (B_FALSE);
   }
   continue;
  }




  if (prop == ZFS_PROP_ORIGIN)
   continue;


  if (prop == ZFS_PROP_ENCRYPTION ||
      zfs_prop_encryption_key_param(prop))
   continue;





  if (zfs_prop_readonly(prop) || prop == ZFS_PROP_VERSION ||
      prop == ZFS_PROP_VOLSIZE) {
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "invalid property '%s'"), name);
   return (B_FALSE);
  }
 }

 return (B_TRUE);
}
