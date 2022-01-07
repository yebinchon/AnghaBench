
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* cmd; char** vdev_names; int vdev_names_count; int cb_name_flags; int * g_zfs; } ;
typedef TYPE_1__ vdev_cmd_data_list_t ;
typedef int libzfs_handle_t ;


 int B_TRUE ;
 int all_pools_for_each_vdev_gather_cb ;
 int all_pools_for_each_vdev_run_vcdl (TYPE_1__*) ;
 int for_each_pool (int,char**,int ,int *,int ,TYPE_1__*) ;
 int process_unique_cmd_columns (TYPE_1__*) ;
 TYPE_1__* safe_malloc (int) ;

vdev_cmd_data_list_t *
all_pools_for_each_vdev_run(int argc, char **argv, char *cmd,
    libzfs_handle_t *g_zfs, char **vdev_names, int vdev_names_count,
    int cb_name_flags)
{
 vdev_cmd_data_list_t *vcdl;
 vcdl = safe_malloc(sizeof (vdev_cmd_data_list_t));
 vcdl->cmd = cmd;

 vcdl->vdev_names = vdev_names;
 vcdl->vdev_names_count = vdev_names_count;
 vcdl->cb_name_flags = cb_name_flags;
 vcdl->g_zfs = g_zfs;


 for_each_pool(argc, argv, B_TRUE, ((void*)0),
     all_pools_for_each_vdev_gather_cb, vcdl);


 all_pools_for_each_vdev_run_vcdl(vcdl);






 process_unique_cmd_columns(vcdl);

 return (vcdl);
}
