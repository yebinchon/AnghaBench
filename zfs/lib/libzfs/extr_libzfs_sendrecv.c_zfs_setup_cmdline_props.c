
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;
typedef int zfs_type_t ;
typedef scalar_t__ zfs_prop_t ;
typedef int zfs_handle_t ;
typedef int uint_t ;
typedef int uint8_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;
typedef scalar_t__ boolean_t ;


 int B_FALSE ;


 int EZFS_BADPROP ;
 int EZFS_CRYPTOFAILED ;
 int TEXT_DOMAIN ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 scalar_t__ ZFS_PROP_ENCRYPTION ;
 scalar_t__ ZFS_PROP_ORIGIN ;
 int ZFS_TYPE_DATASET ;
 int ZPROP_SOURCE ;
 int ZPROP_SOURCE_VAL_RECVD ;
 int dgettext (int ,char*) ;
 int fnvlist_add_boolean (int *,char const*) ;
 int fnvlist_add_nvpair (int *,int *) ;
 int * fnvlist_alloc () ;
 int fnvlist_free (int *) ;
 int * fnvlist_lookup_nvlist (int *,char const*) ;
 int fnvlist_merge (int *,int *) ;
 int fnvlist_remove (int *,char const*) ;
 scalar_t__ nvlist_empty (int *) ;
 int nvlist_exists (int *,char const*) ;
 int nvlist_lookup_string (int *,int ,char**) ;
 int * nvlist_next_nvpair (int *,int *) ;
 char* nvpair_name (int *) ;
 int nvpair_type (int *) ;
 char* strchr (char*,char) ;
 int strcmp (char*,int ) ;
 int strlcpy (char*,char*,int) ;
 char* strrchr (char*,char) ;
 int zfs_close (int *) ;
 scalar_t__ zfs_crypto_create (int *,char*,int *,int *,int ,int **,int *) ;
 scalar_t__ zfs_dataset_exists (int *,char*,int ) ;
 int zfs_error (int *,int ,char const*) ;
 int zfs_error_aux (int *,int ,char const*) ;
 scalar_t__ zfs_name_to_prop (char const*) ;
 int * zfs_open (int *,char*,int ) ;
 scalar_t__ zfs_prop_encryption_key_param (scalar_t__) ;
 int zfs_prop_inheritable (scalar_t__) ;
 int zfs_prop_user (char const*) ;
 int zfs_prop_valid_for_type (scalar_t__,int ,int ) ;
 int * zfs_valid_proplist (int *,int ,int *,scalar_t__,int *,int *,int ,char const*) ;
 int zpool_close (int *) ;
 int * zpool_open (int *,char*) ;

__attribute__((used)) static int
zfs_setup_cmdline_props(libzfs_handle_t *hdl, zfs_type_t type,
    char *fsname, boolean_t zoned, boolean_t recursive, boolean_t newfs,
    boolean_t raw, boolean_t toplevel, nvlist_t *recvprops, nvlist_t *cmdprops,
    nvlist_t *origprops, nvlist_t **oxprops, uint8_t **wkeydata_out,
    uint_t *wkeylen_out, const char *errbuf)
{
 nvpair_t *nvp;
 nvlist_t *oprops, *voprops;
 zfs_handle_t *zhp = ((void*)0);
 zpool_handle_t *zpool_hdl = ((void*)0);
 char *cp;
 int ret = 0;
 char namebuf[ZFS_MAX_DATASET_NAME_LEN];

 if (nvlist_empty(cmdprops))
  return (0);

 *oxprops = fnvlist_alloc();
 oprops = fnvlist_alloc();

 strlcpy(namebuf, fsname, ZFS_MAX_DATASET_NAME_LEN);




 if (zfs_dataset_exists(hdl, namebuf, ZFS_TYPE_DATASET)) {
  zhp = zfs_open(hdl, namebuf, ZFS_TYPE_DATASET);
  if (zhp == ((void*)0)) {
   ret = -1;
   goto error;
  }
 }


 cp = strchr(namebuf, '/');
 if (cp != ((void*)0))
  *cp = '\0';
 zpool_hdl = zpool_open(hdl, namebuf);
 if (zpool_hdl == ((void*)0)) {
  ret = -1;
  goto error;
 }


 if (cp != ((void*)0))
  *cp = '/';





 nvp = ((void*)0);
 while ((nvp = nvlist_next_nvpair(cmdprops, nvp)) != ((void*)0)) {
  const char *name = nvpair_name(nvp);
  zfs_prop_t prop = zfs_name_to_prop(name);


  if (prop == ZFS_PROP_ORIGIN)
   continue;
  if (!zfs_prop_valid_for_type(prop, type, B_FALSE) &&
      !zfs_prop_user(name)) {
   if (recursive)
    continue;
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "property '%s' does not apply to datasets of this "
       "type"), name);
   ret = zfs_error(hdl, EZFS_BADPROP, errbuf);
   goto error;
  }


  if ((zfs_prop_encryption_key_param(prop) ||
      prop == ZFS_PROP_ENCRYPTION) && raw) {
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "encryption property '%s' cannot "
       "be set or excluded for raw streams."), name);
   ret = zfs_error(hdl, EZFS_BADPROP, errbuf);
   goto error;
  }


  if ((zfs_prop_encryption_key_param(prop) ||
      prop == ZFS_PROP_ENCRYPTION) && !newfs &&
      nvpair_type(nvp) != 129) {
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "encryption property '%s' cannot "
       "be set for incremental streams."), name);
   ret = zfs_error(hdl, EZFS_BADPROP, errbuf);
   goto error;
  }

  switch (nvpair_type(nvp)) {
  case 129:
   if (nvlist_exists(origprops, name)) {
    nvlist_t *attrs;
    char *source = ((void*)0);

    attrs = fnvlist_lookup_nvlist(origprops, name);
    if (nvlist_lookup_string(attrs,
        ZPROP_SOURCE, &source) == 0 &&
        strcmp(source, ZPROP_SOURCE_VAL_RECVD) != 0)
     continue;
   }





   if (!zfs_prop_inheritable(prop) &&
       !zfs_prop_user(name) &&
       nvlist_exists(recvprops, name))
    fnvlist_remove(recvprops, name);
   else
    fnvlist_add_nvpair(*oxprops, nvp);
   break;
  case 128:
   fnvlist_add_nvpair(oprops, nvp);
   break;
  default:
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "property '%s' must be a string or boolean"), name);
   ret = zfs_error(hdl, EZFS_BADPROP, errbuf);
   goto error;
  }
 }

 if (toplevel) {

  if ((voprops = zfs_valid_proplist(hdl, ZFS_TYPE_DATASET,
      oprops, zoned, zhp, zpool_hdl, B_FALSE, errbuf)) == ((void*)0)) {
   ret = zfs_error(hdl, EZFS_BADPROP, errbuf);
   goto error;
  }





  cp = strrchr(namebuf, '/');
  if (cp != ((void*)0))
   *cp = '\0';

  if (!raw && zfs_crypto_create(hdl, namebuf, voprops, ((void*)0),
      B_FALSE, wkeydata_out, wkeylen_out) != 0) {
   fnvlist_free(voprops);
   ret = zfs_error(hdl, EZFS_CRYPTOFAILED, errbuf);
   goto error;
  }


  fnvlist_merge(*oxprops, voprops);
  fnvlist_free(voprops);
 } else {

  nvp = ((void*)0);
  while ((nvp = nvlist_next_nvpair(oprops, nvp)) != ((void*)0)) {
   const char *name = nvpair_name(nvp);
   fnvlist_add_boolean(*oxprops, name);
  }
 }

error:
 if (zhp != ((void*)0))
  zfs_close(zhp);
 if (zpool_hdl != ((void*)0))
  zpool_close(zpool_hdl);
 fnvlist_free(oprops);
 return (ret);
}
