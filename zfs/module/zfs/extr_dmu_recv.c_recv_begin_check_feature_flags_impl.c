
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int spa_t ;


 int DMU_BACKUP_FEATURE_EMBED_DATA ;
 int DMU_BACKUP_FEATURE_LARGE_BLOCKS ;
 int DMU_BACKUP_FEATURE_LARGE_DNODE ;
 int DMU_BACKUP_FEATURE_LZ4 ;
 int DMU_BACKUP_FEATURE_REDACTED ;
 int DMU_BACKUP_FEATURE_SA_SPILL ;
 int DMU_STREAM_SUPPORTED (int) ;
 int ENOTSUP ;
 int SET_ERROR (int ) ;
 int SPA_FEATURE_EMBEDDED_DATA ;
 int SPA_FEATURE_LARGE_BLOCKS ;
 int SPA_FEATURE_LARGE_DNODE ;
 int SPA_FEATURE_LZ4_COMPRESS ;
 int SPA_FEATURE_REDACTED_DATASETS ;
 scalar_t__ SPA_VERSION_SA ;
 int ZFS_ERR_UNKNOWN_SEND_STREAM_FEATURE ;
 int spa_feature_is_enabled (int *,int ) ;
 scalar_t__ spa_version (int *) ;

__attribute__((used)) static int
recv_begin_check_feature_flags_impl(uint64_t featureflags, spa_t *spa)
{



 if (!DMU_STREAM_SUPPORTED(featureflags)) {
  return (SET_ERROR(ZFS_ERR_UNKNOWN_SEND_STREAM_FEATURE));
 }


 if ((featureflags & DMU_BACKUP_FEATURE_SA_SPILL) &&
     spa_version(spa) < SPA_VERSION_SA)
  return (SET_ERROR(ENOTSUP));







 if ((featureflags & DMU_BACKUP_FEATURE_LZ4) &&
     !spa_feature_is_enabled(spa, SPA_FEATURE_LZ4_COMPRESS))
  return (SET_ERROR(ENOTSUP));
 if ((featureflags & DMU_BACKUP_FEATURE_EMBED_DATA) &&
     !spa_feature_is_enabled(spa, SPA_FEATURE_EMBEDDED_DATA))
  return (SET_ERROR(ENOTSUP));
 if ((featureflags & DMU_BACKUP_FEATURE_LARGE_BLOCKS) &&
     !spa_feature_is_enabled(spa, SPA_FEATURE_LARGE_BLOCKS))
  return (SET_ERROR(ENOTSUP));
 if ((featureflags & DMU_BACKUP_FEATURE_LARGE_DNODE) &&
     !spa_feature_is_enabled(spa, SPA_FEATURE_LARGE_DNODE))
  return (SET_ERROR(ENOTSUP));





 if ((featureflags & DMU_BACKUP_FEATURE_REDACTED) &&
     !spa_feature_is_enabled(spa, SPA_FEATURE_REDACTED_DATASETS))
  return (SET_ERROR(ENOTSUP));

 return (0);
}
