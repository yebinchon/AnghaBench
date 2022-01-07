
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ zc_remove_timer; } ;
typedef TYPE_1__ zfs_case_t ;
typedef scalar_t__ id_t ;
typedef int fmd_hdl_t ;


 int B_FALSE ;
 int zfs_case_solve (int *,TYPE_1__*,char*,int ) ;

__attribute__((used)) static void
zfs_fm_timeout(fmd_hdl_t *hdl, id_t id, void *data)
{
 zfs_case_t *zcp = data;

 if (id == zcp->zc_remove_timer)
  zfs_case_solve(hdl, zcp, "fault.fs.zfs.vdev.io", B_FALSE);
}
