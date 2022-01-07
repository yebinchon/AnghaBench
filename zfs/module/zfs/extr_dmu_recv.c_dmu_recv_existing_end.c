
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int drc_tofs; int drc_ds; } ;
typedef TYPE_1__ dmu_recv_cookie_t ;


 int ZFS_MAX_DATASET_NAME_LEN ;
 int ZFS_SPACE_CHECK_NORMAL ;
 int dmu_recv_end_check ;
 int dmu_recv_end_modified_blocks ;
 int dmu_recv_end_sync ;
 int dsl_dataset_name (int ,char*) ;
 int dsl_sync_task (int ,int ,int ,TYPE_1__*,int ,int ) ;
 int zfs_destroy_unmount_origin (char*) ;

__attribute__((used)) static int
dmu_recv_existing_end(dmu_recv_cookie_t *drc)
{
 return (dsl_sync_task(drc->drc_tofs,
     dmu_recv_end_check, dmu_recv_end_sync, drc,
     dmu_recv_end_modified_blocks, ZFS_SPACE_CHECK_NORMAL));
}
