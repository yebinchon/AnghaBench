
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int zc_case; int zc_present; } ;
typedef TYPE_1__ zfs_case_t ;
typedef int uu_list_walk_t ;
typedef int libzfs_handle_t ;
typedef int fmd_hdl_t ;


 int B_FALSE ;
 int UU_WALK_ROBUST ;
 int fmd_case_close (int *,int ) ;
 int * fmd_hdl_getspecific (int *) ;
 TYPE_1__* uu_list_first (int ) ;
 TYPE_1__* uu_list_next (int ,TYPE_1__*) ;
 int uu_list_walk_end (int *) ;
 TYPE_1__* uu_list_walk_next (int *) ;
 int * uu_list_walk_start (int ,int ) ;
 int zfs_cases ;
 int zfs_mark_pool ;
 scalar_t__ zpool_iter (int *,int ,int *) ;

__attribute__((used)) static void
zfs_purge_cases(fmd_hdl_t *hdl)
{
 zfs_case_t *zcp;
 uu_list_walk_t *walk;
 libzfs_handle_t *zhdl = fmd_hdl_getspecific(hdl);
 for (zcp = uu_list_first(zfs_cases); zcp != ((void*)0);
     zcp = uu_list_next(zfs_cases, zcp))
  zcp->zc_present = B_FALSE;






 if (zpool_iter(zhdl, zfs_mark_pool, ((void*)0)) != 0)
  return;




 walk = uu_list_walk_start(zfs_cases, UU_WALK_ROBUST);
 while ((zcp = uu_list_walk_next(walk)) != ((void*)0)) {
  if (!zcp->zc_present)
   fmd_case_close(hdl, zcp->zc_case);
 }
 uu_list_walk_end(walk);
}
