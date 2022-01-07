
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ zc_ena; } ;
struct TYPE_8__ {int zc_node; TYPE_1__ zc_data; } ;
typedef TYPE_2__ zfs_case_t ;
typedef int uu_list_walk_t ;
typedef int libzfs_handle_t ;
typedef int fmd_hdl_t ;


 int UU_WALK_ROBUST ;
 int fmd_hdl_debug (int *,char*,unsigned long long) ;
 int fmd_hdl_free (int *,TYPE_2__*,int) ;
 int * fmd_hdl_getspecific (int *) ;
 int libzfs_fini (int *) ;
 int uu_list_destroy (int ) ;
 int uu_list_node_fini (TYPE_2__*,int *,int ) ;
 int uu_list_pool_destroy (int ) ;
 int uu_list_remove (int ,TYPE_2__*) ;
 int uu_list_walk_end (int *) ;
 TYPE_2__* uu_list_walk_next (int *) ;
 int * uu_list_walk_start (int ,int ) ;
 int zfs_case_pool ;
 int zfs_cases ;

void
_zfs_diagnosis_fini(fmd_hdl_t *hdl)
{
 zfs_case_t *zcp;
 uu_list_walk_t *walk;
 libzfs_handle_t *zhdl;




 walk = uu_list_walk_start(zfs_cases, UU_WALK_ROBUST);
 while ((zcp = uu_list_walk_next(walk)) != ((void*)0)) {
  fmd_hdl_debug(hdl, "removing case ena %llu",
      (long long unsigned)zcp->zc_data.zc_ena);
  uu_list_remove(zfs_cases, zcp);
  uu_list_node_fini(zcp, &zcp->zc_node, zfs_case_pool);
  fmd_hdl_free(hdl, zcp, sizeof (zfs_case_t));
 }
 uu_list_walk_end(walk);

 uu_list_destroy(zfs_cases);
 uu_list_pool_destroy(zfs_case_pool);

 zhdl = fmd_hdl_getspecific(hdl);
 libzfs_fini(zhdl);
}
