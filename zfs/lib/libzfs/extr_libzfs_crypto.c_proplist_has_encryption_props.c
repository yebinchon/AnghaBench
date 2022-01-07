
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int ZFS_PROP_ENCRYPTION ;
 int ZFS_PROP_KEYFORMAT ;
 int ZFS_PROP_KEYLOCATION ;
 int ZFS_PROP_PBKDF2_ITERS ;
 scalar_t__ ZIO_CRYPT_OFF ;
 int nvlist_lookup_string (int *,int ,char**) ;
 int nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 scalar_t__ strcmp (char*,char*) ;
 int zfs_prop_to_name (int ) ;

__attribute__((used)) static boolean_t
proplist_has_encryption_props(nvlist_t *props)
{
 int ret;
 uint64_t intval;
 char *strval;

 ret = nvlist_lookup_uint64(props,
     zfs_prop_to_name(ZFS_PROP_ENCRYPTION), &intval);
 if (ret == 0 && intval != ZIO_CRYPT_OFF)
  return (B_TRUE);

 ret = nvlist_lookup_string(props,
     zfs_prop_to_name(ZFS_PROP_KEYLOCATION), &strval);
 if (ret == 0 && strcmp(strval, "none") != 0)
  return (B_TRUE);

 ret = nvlist_lookup_uint64(props,
     zfs_prop_to_name(ZFS_PROP_KEYFORMAT), &intval);
 if (ret == 0)
  return (B_TRUE);

 ret = nvlist_lookup_uint64(props,
     zfs_prop_to_name(ZFS_PROP_PBKDF2_ITERS), &intval);
 if (ret == 0)
  return (B_TRUE);

 return (B_FALSE);
}
