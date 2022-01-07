
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint16_t ;
struct TYPE_8__ {scalar_t__ ub_mmp_magic; scalar_t__ ub_mmp_delay; scalar_t__ ub_txg; scalar_t__ ub_timestamp; } ;
typedef TYPE_1__ uberblock_t ;
struct TYPE_9__ {int spa_import_flags; } ;
typedef TYPE_2__ spa_t ;
typedef int nvlist_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ MMP_MAGIC ;
 int MMP_SEQ (TYPE_1__*) ;
 scalar_t__ MMP_SEQ_VALID (TYPE_1__*) ;
 scalar_t__ POOL_STATE_ACTIVE ;
 int ZFS_IMPORT_SKIP_MMP ;
 int ZPOOL_CONFIG_HOSTID ;
 int ZPOOL_CONFIG_LOAD_INFO ;
 int ZPOOL_CONFIG_MMP_SEQ ;
 int ZPOOL_CONFIG_MMP_TXG ;
 int ZPOOL_CONFIG_POOL_STATE ;
 int ZPOOL_CONFIG_TIMESTAMP ;
 int * fnvlist_lookup_nvlist (int *,int ) ;
 scalar_t__ fnvlist_lookup_uint64 (int *,int ) ;
 scalar_t__ nvlist_exists (int *,int ) ;
 int nvlist_lookup_uint16 (int *,int ,int *) ;
 int nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 scalar_t__ spa_get_hostid (TYPE_2__*) ;

__attribute__((used)) static boolean_t
spa_activity_check_required(spa_t *spa, uberblock_t *ub, nvlist_t *label,
    nvlist_t *config)
{
 uint64_t state = 0;
 uint64_t hostid = 0;
 uint64_t tryconfig_txg = 0;
 uint64_t tryconfig_timestamp = 0;
 uint16_t tryconfig_mmp_seq = 0;
 nvlist_t *nvinfo;

 if (nvlist_exists(config, ZPOOL_CONFIG_LOAD_INFO)) {
  nvinfo = fnvlist_lookup_nvlist(config, ZPOOL_CONFIG_LOAD_INFO);
  (void) nvlist_lookup_uint64(nvinfo, ZPOOL_CONFIG_MMP_TXG,
      &tryconfig_txg);
  (void) nvlist_lookup_uint64(config, ZPOOL_CONFIG_TIMESTAMP,
      &tryconfig_timestamp);
  (void) nvlist_lookup_uint16(nvinfo, ZPOOL_CONFIG_MMP_SEQ,
      &tryconfig_mmp_seq);
 }

 (void) nvlist_lookup_uint64(config, ZPOOL_CONFIG_POOL_STATE, &state);





 if (spa->spa_import_flags & ZFS_IMPORT_SKIP_MMP)
  return (B_FALSE);




 if (ub->ub_mmp_magic == MMP_MAGIC && ub->ub_mmp_delay == 0)
  return (B_FALSE);







 if (tryconfig_txg && tryconfig_txg == ub->ub_txg &&
     tryconfig_timestamp && tryconfig_timestamp == ub->ub_timestamp &&
     tryconfig_mmp_seq && tryconfig_mmp_seq ==
     (MMP_SEQ_VALID(ub) ? MMP_SEQ(ub) : 0))
  return (B_FALSE);






 if (nvlist_exists(label, ZPOOL_CONFIG_HOSTID))
  hostid = fnvlist_lookup_uint64(label, ZPOOL_CONFIG_HOSTID);

 if (hostid == spa_get_hostid(spa))
  return (B_FALSE);




 if (state != POOL_STATE_ACTIVE)
  return (B_FALSE);

 return (B_TRUE);
}
