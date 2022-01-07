
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * vdev_spa; } ;
typedef TYPE_1__ vdev_t ;
typedef int vdev_labeltype_t ;
typedef scalar_t__ uint64_t ;
typedef int spa_t ;
typedef int nvlist_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ FREAD ;
 scalar_t__ POOL_STATE_ACTIVE ;
 scalar_t__ POOL_STATE_L2CACHE ;
 scalar_t__ POOL_STATE_SPARE ;




 int ZPOOL_CONFIG_CREATE_TXG ;
 int ZPOOL_CONFIG_GUID ;
 int ZPOOL_CONFIG_POOL_GUID ;
 int ZPOOL_CONFIG_POOL_STATE ;
 int ZPOOL_CONFIG_POOL_TXG ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 int * spa_by_guid (scalar_t__,scalar_t__) ;
 int spa_guid_exists (scalar_t__,scalar_t__) ;
 int spa_has_spare (int *,scalar_t__) ;
 scalar_t__ spa_l2cache_exists (scalar_t__,int *) ;
 scalar_t__ spa_mode (int *) ;
 scalar_t__ spa_spare_exists (scalar_t__,scalar_t__*,int *) ;
 int * vdev_label_read_config (TYPE_1__*,unsigned long long) ;

__attribute__((used)) static boolean_t
vdev_inuse(vdev_t *vd, uint64_t crtxg, vdev_labeltype_t reason,
    uint64_t *spare_guid, uint64_t *l2cache_guid)
{
 spa_t *spa = vd->vdev_spa;
 uint64_t state, pool_guid, device_guid, txg, spare_pool;
 uint64_t vdtxg = 0;
 nvlist_t *label;

 if (spare_guid)
  *spare_guid = 0ULL;
 if (l2cache_guid)
  *l2cache_guid = 0ULL;




 if ((label = vdev_label_read_config(vd, -1ULL)) == ((void*)0))
  return (B_FALSE);

 (void) nvlist_lookup_uint64(label, ZPOOL_CONFIG_CREATE_TXG,
     &vdtxg);

 if (nvlist_lookup_uint64(label, ZPOOL_CONFIG_POOL_STATE,
     &state) != 0 ||
     nvlist_lookup_uint64(label, ZPOOL_CONFIG_GUID,
     &device_guid) != 0) {
  nvlist_free(label);
  return (B_FALSE);
 }

 if (state != POOL_STATE_SPARE && state != POOL_STATE_L2CACHE &&
     (nvlist_lookup_uint64(label, ZPOOL_CONFIG_POOL_GUID,
     &pool_guid) != 0 ||
     nvlist_lookup_uint64(label, ZPOOL_CONFIG_POOL_TXG,
     &txg) != 0)) {
  nvlist_free(label);
  return (B_FALSE);
 }

 nvlist_free(label);






 if (state != POOL_STATE_SPARE && state != POOL_STATE_L2CACHE &&
     !spa_guid_exists(pool_guid, device_guid) &&
     !spa_spare_exists(device_guid, ((void*)0), ((void*)0)) &&
     !spa_l2cache_exists(device_guid, ((void*)0)))
  return (B_FALSE);
 if (state != POOL_STATE_SPARE && state != POOL_STATE_L2CACHE &&
     txg == 0 && vdtxg == crtxg)
  return (B_TRUE);






 if (spa_spare_exists(device_guid, &spare_pool, ((void*)0)) ||
     spa_has_spare(spa, device_guid)) {
  if (spare_guid)
   *spare_guid = device_guid;

  switch (reason) {
  case 131:
  case 130:
   return (B_TRUE);

  case 129:
   return (!spa_has_spare(spa, device_guid) ||
       spare_pool != 0ULL);

  case 128:
   return (spa_has_spare(spa, device_guid));
  default:
   break;
  }
 }




 if (spa_l2cache_exists(device_guid, ((void*)0)))
  return (B_TRUE);






 if (state != POOL_STATE_SPARE && state != POOL_STATE_L2CACHE &&
     (spa = spa_by_guid(pool_guid, device_guid)) != ((void*)0) &&
     spa_mode(spa) == FREAD)
  state = POOL_STATE_ACTIVE;





 return (state == POOL_STATE_ACTIVE);
}
