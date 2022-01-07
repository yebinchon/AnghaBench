
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ zl_findall; } ;
typedef TYPE_1__ zpool_list_t ;


 int add_pool ;
 int g_zfs ;
 int zpool_iter (int ,int ,TYPE_1__*) ;

void
pool_list_update(zpool_list_t *zlp)
{
 if (zlp->zl_findall)
  (void) zpool_iter(g_zfs, add_pool, zlp);
}
