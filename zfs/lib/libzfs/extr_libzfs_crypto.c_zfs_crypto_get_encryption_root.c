
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;
typedef int prop_encroot ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int MAXNAMELEN ;
 int ZFS_PROP_ENCRYPTION ;
 int ZFS_PROP_ENCRYPTION_ROOT ;
 scalar_t__ ZIO_CRYPT_OFF ;
 scalar_t__ strcmp (char*,int ) ;
 int strcpy (char*,char*) ;
 int zfs_get_name (int *) ;
 int zfs_prop_get (int *,int ,char*,int,int *,int *,int ,int ) ;
 scalar_t__ zfs_prop_get_int (int *,int ) ;

int
zfs_crypto_get_encryption_root(zfs_handle_t *zhp, boolean_t *is_encroot,
    char *buf)
{
 int ret;
 char prop_encroot[MAXNAMELEN];


 if (zfs_prop_get_int(zhp, ZFS_PROP_ENCRYPTION) == ZIO_CRYPT_OFF) {
  *is_encroot = B_FALSE;
  if (buf != ((void*)0))
   buf[0] = '\0';
  return (0);
 }

 ret = zfs_prop_get(zhp, ZFS_PROP_ENCRYPTION_ROOT, prop_encroot,
     sizeof (prop_encroot), ((void*)0), ((void*)0), 0, B_TRUE);
 if (ret != 0) {
  *is_encroot = B_FALSE;
  if (buf != ((void*)0))
   buf[0] = '\0';
  return (ret);
 }

 *is_encroot = strcmp(prop_encroot, zfs_get_name(zhp)) == 0;
 if (buf != ((void*)0))
  strcpy(buf, prop_encroot);

 return (0);
}
