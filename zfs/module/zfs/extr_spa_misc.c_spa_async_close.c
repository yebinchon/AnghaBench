
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int spa_refcount; } ;
typedef TYPE_1__ spa_t ;


 int zfs_refcount_remove (int *,void*) ;

void
spa_async_close(spa_t *spa, void *tag)
{
 (void) zfs_refcount_remove(&spa->spa_refcount, tag);
}
