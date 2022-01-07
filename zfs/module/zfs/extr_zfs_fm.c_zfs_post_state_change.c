
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ vdev_enc_sysfs_path; scalar_t__ vdev_physpath; } ;
typedef TYPE_1__ vdev_t ;
typedef int uint64_t ;
typedef int spa_t ;
typedef int nvlist_t ;


 int FM_EREPORT_PAYLOAD_ZFS_VDEV_ENC_SYSFS_PATH ;
 int FM_EREPORT_PAYLOAD_ZFS_VDEV_LASTSTATE ;
 int FM_EREPORT_PAYLOAD_ZFS_VDEV_PHYSPATH ;
 int FM_NVA_FREE ;
 int FM_RESOURCE_STATECHANGE ;
 int FM_RSRC_CLASS ;
 int * fm_nvlist_create (int *) ;
 int fm_nvlist_destroy (int *,int ) ;
 int nvlist_add_string (int *,int ,scalar_t__) ;
 int nvlist_add_uint64 (int *,int ,int ) ;
 int zfs_post_common (int *,TYPE_1__*,int ,int ,int *) ;

void
zfs_post_state_change(spa_t *spa, vdev_t *vd, uint64_t laststate)
{
}
