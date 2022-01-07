
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zfs_keyformat_t ;
typedef int zfs_handle_t ;
typedef scalar_t__ uint_t ;
typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;
typedef int boolean_t ;


 int B_TRUE ;
 scalar_t__ DEFAULT_PBKDF2_ITERATIONS ;
 int EINVAL ;
 int ENOENT ;
 int TEXT_DOMAIN ;
 scalar_t__ WRAPPING_KEY_LEN ;
 scalar_t__ ZFS_KEYFORMAT_PASSPHRASE ;
 int ZFS_PROP_PBKDF2_ITERS ;
 int ZFS_PROP_PBKDF2_SALT ;
 int derive_key (int *,scalar_t__,scalar_t__,int *,size_t,scalar_t__,int **) ;
 int dgettext (int ,char*) ;
 int free (int *) ;
 int get_key_material (int *,int ,int ,scalar_t__,char*,char const*,int **,size_t*,int *) ;
 int nvlist_add_uint64 (int *,int ,scalar_t__) ;
 int nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 int pkcs11_get_urandom (int *,int) ;
 int zfs_error_aux (int *,int ) ;
 char* zfs_get_name (int *) ;
 int zfs_prop_to_name (int ) ;

__attribute__((used)) static int
populate_create_encryption_params_nvlists(libzfs_handle_t *hdl,
    zfs_handle_t *zhp, boolean_t newkey, zfs_keyformat_t keyformat,
    char *keylocation, nvlist_t *props, uint8_t **wkeydata, uint_t *wkeylen)
{
 int ret;
 uint64_t iters = 0, salt = 0;
 uint8_t *key_material = ((void*)0);
 size_t key_material_len = 0;
 uint8_t *key_data = ((void*)0);
 const char *fsname = (zhp) ? zfs_get_name(zhp) : ((void*)0);


 ret = get_key_material(hdl, B_TRUE, newkey, keyformat, keylocation,
     fsname, &key_material, &key_material_len, ((void*)0));
 if (ret != 0)
  goto error;


 if (keyformat == ZFS_KEYFORMAT_PASSPHRASE) {

  ret = pkcs11_get_urandom((uint8_t *)&salt, sizeof (uint64_t));
  if (ret != sizeof (uint64_t)) {
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "Failed to generate salt."));
   goto error;
  }

  ret = nvlist_add_uint64(props,
      zfs_prop_to_name(ZFS_PROP_PBKDF2_SALT), salt);
  if (ret != 0) {
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "Failed to add salt to properties."));
   goto error;
  }







  ret = nvlist_lookup_uint64(props,
      zfs_prop_to_name(ZFS_PROP_PBKDF2_ITERS), &iters);
  if (ret == ENOENT) {
   iters = DEFAULT_PBKDF2_ITERATIONS;
   ret = nvlist_add_uint64(props,
       zfs_prop_to_name(ZFS_PROP_PBKDF2_ITERS), iters);
   if (ret != 0)
    goto error;
  } else if (ret != 0) {
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "Failed to get pbkdf2 iterations."));
   goto error;
  }
 } else {

  ret = nvlist_lookup_uint64(props,
      zfs_prop_to_name(ZFS_PROP_PBKDF2_ITERS), &iters);
  if (ret == 0) {
   ret = EINVAL;
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "Cannot specify pbkdf2iters with a non-passphrase "
       "keyformat."));
   goto error;
  }
 }


 ret = derive_key(hdl, keyformat, iters, key_material, key_material_len,
     salt, &key_data);
 if (ret != 0)
  goto error;

 free(key_material);

 *wkeydata = key_data;
 *wkeylen = WRAPPING_KEY_LEN;
 return (0);

error:
 if (key_material != ((void*)0))
  free(key_material);
 if (key_data != ((void*)0))
  free(key_data);

 *wkeydata = ((void*)0);
 *wkeylen = 0;
 return (ret);
}
