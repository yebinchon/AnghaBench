
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zl_avl; } ;
typedef TYPE_1__ zpool_list_t ;


 int uu_avl_numnodes (int ) ;

int
pool_list_count(zpool_list_t *zlp)
{
 return (uu_avl_numnodes(zlp->zl_avl));
}
