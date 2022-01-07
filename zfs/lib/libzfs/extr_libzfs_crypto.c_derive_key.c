
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_keyformat_t ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int libzfs_handle_t ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int LE_64 (int ) ;
 int PKCS5_PBKDF2_HMAC_SHA1 (char*,int ,int *,int,int ,int,int *) ;
 int TEXT_DOMAIN ;
 int WRAPPING_KEY_LEN ;



 int bcopy (int *,int *,int) ;
 int dgettext (int ,char*) ;
 int free (int *) ;
 int hex_key_to_raw (char*,int,int *) ;
 int strlen (char*) ;
 int * zfs_alloc (int *,int) ;
 int zfs_error_aux (int *,int ) ;

__attribute__((used)) static int
derive_key(libzfs_handle_t *hdl, zfs_keyformat_t format, uint64_t iters,
    uint8_t *key_material, size_t key_material_len, uint64_t salt,
    uint8_t **key_out)
{
 int ret;
 uint8_t *key;

 *key_out = ((void*)0);

 key = zfs_alloc(hdl, WRAPPING_KEY_LEN);
 if (!key)
  return (ENOMEM);

 switch (format) {
 case 128:
  bcopy(key_material, key, WRAPPING_KEY_LEN);
  break;
 case 130:
  ret = hex_key_to_raw((char *)key_material,
      WRAPPING_KEY_LEN * 2, key);
  if (ret != 0) {
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "Invalid hex key provided."));
   goto error;
  }
  break;
 case 129:
  salt = LE_64(salt);

  ret = PKCS5_PBKDF2_HMAC_SHA1((char *)key_material,
      strlen((char *)key_material), ((uint8_t *)&salt),
      sizeof (uint64_t), iters, WRAPPING_KEY_LEN, key);
  if (ret != 1) {
   ret = EIO;
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "Failed to generate key from passphrase."));
   goto error;
  }
  break;
 default:
  ret = EINVAL;
  goto error;
 }

 *key_out = key;
 return (0);

error:
 free(key);

 *key_out = ((void*)0);
 return (ret);
}
