
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* vdev_path; char* vdev_devid; char* vdev_fru; char* vdev_enc_sysfs_path; int vdev_state; int vdev_guid; } ;
typedef TYPE_1__ vdev_t ;
typedef int spa_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int class ;


 int FM_CLASS ;
 int FM_EREPORT_PAYLOAD_ZFS_POOL ;
 int FM_EREPORT_PAYLOAD_ZFS_POOL_CONTEXT ;
 int FM_EREPORT_PAYLOAD_ZFS_POOL_GUID ;
 int FM_EREPORT_PAYLOAD_ZFS_POOL_STATE ;
 int FM_EREPORT_PAYLOAD_ZFS_VDEV_DEVID ;
 int FM_EREPORT_PAYLOAD_ZFS_VDEV_ENC_SYSFS_PATH ;
 int FM_EREPORT_PAYLOAD_ZFS_VDEV_FRU ;
 int FM_EREPORT_PAYLOAD_ZFS_VDEV_GUID ;
 int FM_EREPORT_PAYLOAD_ZFS_VDEV_PATH ;
 int FM_EREPORT_PAYLOAD_ZFS_VDEV_STATE ;
 int FM_RSRC_VERSION ;
 int FM_VERSION ;
 scalar_t__ SPA_LOAD_TRYIMPORT ;
 int VERIFY0 (int ) ;
 char* ZFS_ERROR_CLASS ;
 int * fm_nvlist_create (int *) ;
 int nvlist_add_int32 (int *,int ,scalar_t__) ;
 int nvlist_add_nvpair (int *,int *) ;
 int nvlist_add_string (int *,int ,char*) ;
 int nvlist_add_uint64 (int *,int ,int ) ;
 int nvlist_add_uint8 (int *,int ,int ) ;
 int * nvlist_next_nvpair (int *,int *) ;
 int snprintf (char*,int,char*,char const*,char*,char const*) ;
 int spa_guid (int *) ;
 scalar_t__ spa_load_state (int *) ;
 char* spa_name (int *) ;
 int spa_state (int *) ;

nvlist_t *
zfs_event_create(spa_t *spa, vdev_t *vd, const char *type, const char *name,
    nvlist_t *aux)
{
 nvlist_t *resource = ((void*)0);
 return (resource);
}
