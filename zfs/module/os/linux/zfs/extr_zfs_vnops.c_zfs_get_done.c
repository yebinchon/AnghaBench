
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int znode_t ;
struct TYPE_5__ {int zgd_lr; scalar_t__ zgd_db; int * zgd_private; } ;
typedef TYPE_1__ zgd_t ;


 int ZTOI (int *) ;
 int dmu_buf_rele (scalar_t__,TYPE_1__*) ;
 int kmem_free (TYPE_1__*,int) ;
 int zfs_iput_async (int ) ;
 int zfs_rangelock_exit (int ) ;

void
zfs_get_done(zgd_t *zgd, int error)
{
 znode_t *zp = zgd->zgd_private;

 if (zgd->zgd_db)
  dmu_buf_rele(zgd->zgd_db, zgd);

 zfs_rangelock_exit(zgd->zgd_lr);





 zfs_iput_async(ZTOI(zp));

 kmem_free(zgd, sizeof (zgd_t));
}
