
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ zc_pool_guid; scalar_t__ zc_vdev_guid; } ;
struct TYPE_7__ {int zc_when; int zc_present; TYPE_1__ zc_data; } ;
typedef TYPE_2__ zfs_case_t ;
typedef size_t uint_t ;
typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;
typedef int er_timeval_t ;


 int B_TRUE ;
 int ZPOOL_CONFIG_CHILDREN ;
 int ZPOOL_CONFIG_GUID ;
 int ZPOOL_CONFIG_L2CACHE ;
 int ZPOOL_CONFIG_SPARES ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,size_t*) ;
 int nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 TYPE_2__* uu_list_first (int ) ;
 TYPE_2__* uu_list_next (int ,TYPE_2__*) ;
 int zfs_cases ;

__attribute__((used)) static void
zfs_mark_vdev(uint64_t pool_guid, nvlist_t *vd, er_timeval_t *loaded)
{
 uint64_t vdev_guid = 0;
 uint_t c, children;
 nvlist_t **child;
 zfs_case_t *zcp;

 (void) nvlist_lookup_uint64(vd, ZPOOL_CONFIG_GUID, &vdev_guid);




 for (zcp = uu_list_first(zfs_cases); zcp != ((void*)0);
     zcp = uu_list_next(zfs_cases, zcp)) {
  if (zcp->zc_data.zc_pool_guid == pool_guid &&
      zcp->zc_data.zc_vdev_guid == vdev_guid) {
   zcp->zc_present = B_TRUE;
   zcp->zc_when = *loaded;
  }
 }




 if (nvlist_lookup_nvlist_array(vd, ZPOOL_CONFIG_CHILDREN, &child,
     &children) == 0) {
  for (c = 0; c < children; c++)
   zfs_mark_vdev(pool_guid, child[c], loaded);
 }

 if (nvlist_lookup_nvlist_array(vd, ZPOOL_CONFIG_L2CACHE, &child,
     &children) == 0) {
  for (c = 0; c < children; c++)
   zfs_mark_vdev(pool_guid, child[c], loaded);
 }

 if (nvlist_lookup_nvlist_array(vd, ZPOOL_CONFIG_SPARES, &child,
     &children) == 0) {
  for (c = 0; c < children; c++)
   zfs_mark_vdev(pool_guid, child[c], loaded);
 }
}
