
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_prop_t ;
typedef int uint64_t ;
typedef int spa_t ;
typedef int spa_feature_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int cred_t ;
typedef scalar_t__ boolean_t ;


 int BOOTFS_COMPRESS_VALID (int) ;
 int CRED () ;
 scalar_t__ DATA_TYPE_NVLIST ;
 scalar_t__ DATA_TYPE_UINT64 ;
 int EDOM ;
 int EINVAL ;
 int ENOTSUP ;
 int ERANGE ;
 int FTAG ;
 int SET_ERROR (int ) ;
 int SPA_FEATURE_LARGE_BLOCKS ;
 int SPA_FEATURE_LARGE_DNODE ;
 int SPA_FEATURE_LZ4_COMPRESS ;
 int SPA_FEATURE_NONE ;
 int SPA_MAXBLOCKSIZE ;
 int SPA_OLD_MAXBLOCKSIZE ;
 int SPA_VERSION_DEDUP ;
 int SPA_VERSION_DITTO_BLOCKS ;
 int SPA_VERSION_GZIP_COMPRESSION ;
 int SPA_VERSION_PASSTHROUGH_X ;
 int SPA_VERSION_ZLE_COMPRESSION ;
 int VERIFY (int) ;
 int ZFS_ACL_PASSTHROUGH_X ;
 char* ZFS_DELEG_PERM_GROUPOBJQUOTA ;
 char* ZFS_DELEG_PERM_GROUPQUOTA ;
 char* ZFS_DELEG_PERM_PROJECTOBJQUOTA ;
 char* ZFS_DELEG_PERM_PROJECTQUOTA ;
 char* ZFS_DELEG_PERM_USEROBJQUOTA ;
 char const* ZFS_DELEG_PERM_USERPROP ;
 char* ZFS_DELEG_PERM_USERQUOTA ;
 int ZFS_DNSIZE_LEGACY ;






 size_t ZFS_PROP_GROUPOBJQUOTA ;
 size_t ZFS_PROP_GROUPQUOTA ;
 size_t ZFS_PROP_PROJECTOBJQUOTA ;
 size_t ZFS_PROP_PROJECTQUOTA ;



 size_t ZFS_PROP_USEROBJQUOTA ;
 size_t ZFS_PROP_USERQUOTA ;

 int ZIO_CHECKSUM_MASK ;
 int ZIO_COMPRESS_GZIP_1 ;
 int ZIO_COMPRESS_GZIP_9 ;
 int ZIO_COMPRESS_LZ4 ;
 int ZIO_COMPRESS_ZLE ;
 int ZPL_VERSION_FUID ;
 int ZPROP_INVAL ;
 int ZPROP_VALUE ;
 scalar_t__ nvlist_lookup_nvpair (int *,int ,int **) ;
 char* nvpair_name (int *) ;
 scalar_t__ nvpair_type (int *) ;
 scalar_t__ nvpair_value_nvlist (int *,int **) ;
 int nvpair_value_uint64 (int *,int*) ;
 int spa_close (int *,int ) ;
 int spa_feature_is_enabled (int *,int ) ;
 int spa_open (char const*,int **,int ) ;
 int * strchr (char const*,char) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int ) ;
 int zfs_earlier_version (char const*,int ) ;
 int zfs_is_bootfs (char const*) ;
 int zfs_max_recordsize ;
 int zfs_name_to_prop (char const*) ;
 scalar_t__ zfs_prop_user (char const*) ;
 scalar_t__ zfs_prop_userquota (char const*) ;
 int zfs_secpolicy_setprop (char const*,int,int *,int ) ;
 int zfs_secpolicy_write_perms (char const*,char const*,int *) ;
 char** zfs_userquota_prop_prefixes ;
 int zio_checksum_to_feature (int) ;
 int zpl_earlier_version (char const*,int ) ;

__attribute__((used)) static int
zfs_check_settable(const char *dsname, nvpair_t *pair, cred_t *cr)
{
 const char *propname = nvpair_name(pair);
 boolean_t issnap = (strchr(dsname, '@') != ((void*)0));
 zfs_prop_t prop = zfs_name_to_prop(propname);
 uint64_t intval;
 int err;

 if (prop == ZPROP_INVAL) {
  if (zfs_prop_user(propname)) {
   if ((err = zfs_secpolicy_write_perms(dsname,
       ZFS_DELEG_PERM_USERPROP, cr)))
    return (err);
   return (0);
  }

  if (!issnap && zfs_prop_userquota(propname)) {
   const char *perm = ((void*)0);
   const char *uq_prefix =
       zfs_userquota_prop_prefixes[ZFS_PROP_USERQUOTA];
   const char *gq_prefix =
       zfs_userquota_prop_prefixes[ZFS_PROP_GROUPQUOTA];
   const char *uiq_prefix =
       zfs_userquota_prop_prefixes[ZFS_PROP_USEROBJQUOTA];
   const char *giq_prefix =
       zfs_userquota_prop_prefixes[ZFS_PROP_GROUPOBJQUOTA];
   const char *pq_prefix =
       zfs_userquota_prop_prefixes[ZFS_PROP_PROJECTQUOTA];
   const char *piq_prefix = zfs_userquota_prop_prefixes[ ZFS_PROP_PROJECTOBJQUOTA];


   if (strncmp(propname, uq_prefix,
       strlen(uq_prefix)) == 0) {
    perm = ZFS_DELEG_PERM_USERQUOTA;
   } else if (strncmp(propname, uiq_prefix,
       strlen(uiq_prefix)) == 0) {
    perm = ZFS_DELEG_PERM_USEROBJQUOTA;
   } else if (strncmp(propname, gq_prefix,
       strlen(gq_prefix)) == 0) {
    perm = ZFS_DELEG_PERM_GROUPQUOTA;
   } else if (strncmp(propname, giq_prefix,
       strlen(giq_prefix)) == 0) {
    perm = ZFS_DELEG_PERM_GROUPOBJQUOTA;
   } else if (strncmp(propname, pq_prefix,
       strlen(pq_prefix)) == 0) {
    perm = ZFS_DELEG_PERM_PROJECTQUOTA;
   } else if (strncmp(propname, piq_prefix,
       strlen(piq_prefix)) == 0) {
    perm = ZFS_DELEG_PERM_PROJECTOBJQUOTA;
   } else {

    return (SET_ERROR(EINVAL));
   }

   if ((err = zfs_secpolicy_write_perms(dsname, perm, cr)))
    return (err);
   return (0);
  }

  return (SET_ERROR(EINVAL));
 }

 if (issnap)
  return (SET_ERROR(EINVAL));

 if (nvpair_type(pair) == DATA_TYPE_NVLIST) {




  nvlist_t *attrs;
  VERIFY(nvpair_value_nvlist(pair, &attrs) == 0);
  VERIFY(nvlist_lookup_nvpair(attrs, ZPROP_VALUE,
      &pair) == 0);
 }




 switch (prop) {
 case 135:





  if (nvpair_value_uint64(pair, &intval) == 0) {
   if (intval >= ZIO_COMPRESS_GZIP_1 &&
       intval <= ZIO_COMPRESS_GZIP_9 &&
       zfs_earlier_version(dsname,
       SPA_VERSION_GZIP_COMPRESSION)) {
    return (SET_ERROR(ENOTSUP));
   }

   if (intval == ZIO_COMPRESS_ZLE &&
       zfs_earlier_version(dsname,
       SPA_VERSION_ZLE_COMPRESSION))
    return (SET_ERROR(ENOTSUP));

   if (intval == ZIO_COMPRESS_LZ4) {
    spa_t *spa;

    if ((err = spa_open(dsname, &spa, FTAG)) != 0)
     return (err);

    if (!spa_feature_is_enabled(spa,
        SPA_FEATURE_LZ4_COMPRESS)) {
     spa_close(spa, FTAG);
     return (SET_ERROR(ENOTSUP));
    }
    spa_close(spa, FTAG);
   }
   if (zfs_is_bootfs(dsname) &&
       !BOOTFS_COMPRESS_VALID(intval)) {
    return (SET_ERROR(ERANGE));
   }
  }
  break;

 case 134:
  if (zfs_earlier_version(dsname, SPA_VERSION_DITTO_BLOCKS))
   return (SET_ERROR(ENOTSUP));
  break;

 case 128:
 case 131:

  if (nvpair_value_uint64(pair, &intval) == 0 &&
      intval > SPA_OLD_MAXBLOCKSIZE) {
   spa_t *spa;





   if (intval > zfs_max_recordsize ||
       intval > SPA_MAXBLOCKSIZE)
    return (SET_ERROR(ERANGE));

   if ((err = spa_open(dsname, &spa, FTAG)) != 0)
    return (err);

   if (!spa_feature_is_enabled(spa,
       SPA_FEATURE_LARGE_BLOCKS)) {
    spa_close(spa, FTAG);
    return (SET_ERROR(ENOTSUP));
   }
   spa_close(spa, FTAG);
  }
  break;

 case 132:

  if (nvpair_value_uint64(pair, &intval) == 0 &&
      intval != ZFS_DNSIZE_LEGACY) {
   spa_t *spa;






   if (zfs_is_bootfs(dsname) &&
       intval != ZFS_DNSIZE_LEGACY) {
    return (SET_ERROR(EDOM));
   }

   if ((err = spa_open(dsname, &spa, FTAG)) != 0)
    return (err);

   if (!spa_feature_is_enabled(spa,
       SPA_FEATURE_LARGE_DNODE)) {
    spa_close(spa, FTAG);
    return (SET_ERROR(ENOTSUP));
   }
   spa_close(spa, FTAG);
  }
  break;

 case 129:






  break;

 case 130:
  if (zpl_earlier_version(dsname, ZPL_VERSION_FUID))
   return (SET_ERROR(ENOTSUP));
  break;

 case 137:
  if (nvpair_type(pair) == DATA_TYPE_UINT64 &&
      nvpair_value_uint64(pair, &intval) == 0) {
   if (intval == ZFS_ACL_PASSTHROUGH_X &&
       zfs_earlier_version(dsname,
       SPA_VERSION_PASSTHROUGH_X))
    return (SET_ERROR(ENOTSUP));
  }
  break;
 case 136:
 case 133:
 {
  spa_feature_t feature;
  spa_t *spa;
  int err;


  if (prop == 133 &&
      zfs_earlier_version(dsname, SPA_VERSION_DEDUP))
   return (SET_ERROR(ENOTSUP));

  if (nvpair_type(pair) == DATA_TYPE_UINT64 &&
      nvpair_value_uint64(pair, &intval) == 0) {

   feature = zio_checksum_to_feature(
       intval & ZIO_CHECKSUM_MASK);
   if (feature == SPA_FEATURE_NONE)
    break;

   if ((err = spa_open(dsname, &spa, FTAG)) != 0)
    return (err);

   if (!spa_feature_is_enabled(spa, feature)) {
    spa_close(spa, FTAG);
    return (SET_ERROR(ENOTSUP));
   }
   spa_close(spa, FTAG);
  }
  break;
 }

 default:
  break;
 }

 return (zfs_secpolicy_setprop(dsname, prop, pair, CRED()));
}
