
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* zrr_next; } ;
typedef TYPE_1__ zfs_retire_repaired_t ;
struct TYPE_6__ {TYPE_1__* zrd_repaired; } ;
typedef TYPE_2__ zfs_retire_data_t ;
typedef int fmd_hdl_t ;


 int fmd_hdl_free (int *,TYPE_1__*,int) ;

__attribute__((used)) static void
zfs_retire_clear_data(fmd_hdl_t *hdl, zfs_retire_data_t *zdp)
{
 zfs_retire_repaired_t *zrp;

 while ((zrp = zdp->zrd_repaired) != ((void*)0)) {
  zdp->zrd_repaired = zrp->zrr_next;
  fmd_hdl_free(hdl, zrp, sizeof (zfs_retire_repaired_t));
 }
}
