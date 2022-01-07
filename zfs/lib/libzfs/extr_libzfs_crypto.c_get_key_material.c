
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_keylocation_t ;
typedef int zfs_keyformat_t ;
typedef scalar_t__ uint8_t ;
typedef int libzfs_handle_t ;
typedef scalar_t__ boolean_t ;
typedef int FILE ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int EINVAL ;
 size_t MAX_PASSPHRASE_LEN ;
 size_t MIN_PASSPHRASE_LEN ;
 int TEXT_DOMAIN ;
 size_t WRAPPING_KEY_LEN ;



 int ZFS_KEYLOCATION_NONE ;


 int dgettext (int ,char*) ;
 int errno ;
 int fclose (int *) ;
 int fileno (int *) ;
 int * fopen (char*,char*) ;
 int free (scalar_t__*) ;
 int get_key_material_raw (int *,char const*,int,scalar_t__,scalar_t__,scalar_t__**,size_t*) ;
 scalar_t__ isatty (int ) ;
 int isxdigit (char) ;
 scalar_t__ memcmp (char*,char*,size_t) ;
 int * stdin ;
 int zfs_error_aux (int *,int ,...) ;
 int zfs_prop_parse_keylocation (char*) ;

__attribute__((used)) static int
get_key_material(libzfs_handle_t *hdl, boolean_t do_verify, boolean_t newkey,
    zfs_keyformat_t keyformat, char *keylocation, const char *fsname,
    uint8_t **km_out, size_t *kmlen_out, boolean_t *can_retry_out)
{
 int ret, i;
 zfs_keylocation_t keyloc = ZFS_KEYLOCATION_NONE;
 FILE *fd = ((void*)0);
 uint8_t *km = ((void*)0), *km2 = ((void*)0);
 size_t kmlen, kmlen2;
 boolean_t can_retry = B_FALSE;


 keyloc = zfs_prop_parse_keylocation(keylocation);


 switch (keyloc) {
 case 129:
  fd = stdin;
  if (isatty(fileno(fd))) {
   can_retry = B_TRUE;


   if (keyformat == 130) {
    ret = EINVAL;
    zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
        "Cannot enter raw keys on the terminal"));
    goto error;
   }
  }
  break;
 case 128:
  fd = fopen(&keylocation[7], "r");
  if (!fd) {
   ret = errno;
   errno = 0;
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "Failed to open key material file"));
   goto error;
  }
  break;
 default:
  ret = EINVAL;
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "Invalid keylocation."));
  goto error;
 }


 ret = get_key_material_raw(fd, fsname, keyformat, B_FALSE, newkey,
     &km, &kmlen);
 if (ret != 0)
  goto error;


 switch (keyformat) {
 case 130:

  if (kmlen < WRAPPING_KEY_LEN) {
   ret = EINVAL;
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "Raw key too short (expected %u)."),
       WRAPPING_KEY_LEN);
   goto error;
  }

  if (kmlen > WRAPPING_KEY_LEN) {
   ret = EINVAL;
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "Raw key too long (expected %u)."),
       WRAPPING_KEY_LEN);
   goto error;
  }
  break;
 case 132:

  if (kmlen < WRAPPING_KEY_LEN * 2) {
   ret = EINVAL;
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "Hex key too short (expected %u)."),
       WRAPPING_KEY_LEN * 2);
   goto error;
  }

  if (kmlen > WRAPPING_KEY_LEN * 2) {
   ret = EINVAL;
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "Hex key too long (expected %u)."),
       WRAPPING_KEY_LEN * 2);
   goto error;
  }


  for (i = 0; i < WRAPPING_KEY_LEN * 2; i++) {
   if (!isxdigit((char)km[i])) {
    ret = EINVAL;
    zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
        "Invalid hex character detected."));
    goto error;
   }
  }
  break;
 case 131:

  if (kmlen > MAX_PASSPHRASE_LEN) {
   ret = EINVAL;
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "Passphrase too long (max %u)."),
       MAX_PASSPHRASE_LEN);
   goto error;
  }

  if (kmlen < MIN_PASSPHRASE_LEN) {
   ret = EINVAL;
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "Passphrase too short (min %u)."),
       MIN_PASSPHRASE_LEN);
   goto error;
  }
  break;
 default:

  break;
 }

 if (do_verify && isatty(fileno(fd))) {
  ret = get_key_material_raw(fd, fsname, keyformat, B_TRUE,
      newkey, &km2, &kmlen2);
  if (ret != 0)
   goto error;

  if (kmlen2 != kmlen ||
      (memcmp((char *)km, (char *)km2, kmlen) != 0)) {
   ret = EINVAL;
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "Provided keys do not match."));
   goto error;
  }
 }

 if (fd != stdin)
  fclose(fd);

 if (km2 != ((void*)0))
  free(km2);

 *km_out = km;
 *kmlen_out = kmlen;
 if (can_retry_out != ((void*)0))
  *can_retry_out = can_retry;

 return (0);

error:
 if (km != ((void*)0))
  free(km);

 if (km2 != ((void*)0))
  free(km2);

 if (fd != ((void*)0) && fd != stdin)
  fclose(fd);

 *km_out = ((void*)0);
 *kmlen_out = 0;
 if (can_retry_out != ((void*)0))
  *can_retry_out = can_retry;

 return (ret);
}
