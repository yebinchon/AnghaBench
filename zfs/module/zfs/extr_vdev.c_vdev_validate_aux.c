
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ vdev_guid; } ;
typedef TYPE_1__ vdev_t ;
typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;


 int B_TRUE ;
 int SPA_VERSION_IS_SUPPORTED (scalar_t__) ;
 int VDEV_AUX_CORRUPT_DATA ;
 int VDEV_STATE_CANT_OPEN ;
 int ZPOOL_CONFIG_GUID ;
 int ZPOOL_CONFIG_POOL_STATE ;
 int ZPOOL_CONFIG_VERSION ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 int * vdev_label_read_config (TYPE_1__*,unsigned long long) ;
 int vdev_readable (TYPE_1__*) ;
 int vdev_set_state (TYPE_1__*,int ,int ,int ) ;

int
vdev_validate_aux(vdev_t *vd)
{
 nvlist_t *label;
 uint64_t guid, version;
 uint64_t state;

 if (!vdev_readable(vd))
  return (0);

 if ((label = vdev_label_read_config(vd, -1ULL)) == ((void*)0)) {
  vdev_set_state(vd, B_TRUE, VDEV_STATE_CANT_OPEN,
      VDEV_AUX_CORRUPT_DATA);
  return (-1);
 }

 if (nvlist_lookup_uint64(label, ZPOOL_CONFIG_VERSION, &version) != 0 ||
     !SPA_VERSION_IS_SUPPORTED(version) ||
     nvlist_lookup_uint64(label, ZPOOL_CONFIG_GUID, &guid) != 0 ||
     guid != vd->vdev_guid ||
     nvlist_lookup_uint64(label, ZPOOL_CONFIG_POOL_STATE, &state) != 0) {
  vdev_set_state(vd, B_TRUE, VDEV_STATE_CANT_OPEN,
      VDEV_AUX_CORRUPT_DATA);
  nvlist_free(label);
  return (-1);
 }





 nvlist_free(label);
 return (0);
}
