
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ spa_minref; int spa_refcount; } ;
typedef TYPE_1__ spa_t ;


 int ASSERT (int) ;
 scalar_t__ MUTEX_HELD (int *) ;
 int spa_namespace_lock ;
 scalar_t__ zfs_refcount_count (int *) ;
 int zfs_refcount_remove (int *,void*) ;

void
spa_close(spa_t *spa, void *tag)
{
 ASSERT(zfs_refcount_count(&spa->spa_refcount) > spa->spa_minref ||
     MUTEX_HELD(&spa_namespace_lock));
 (void) zfs_refcount_remove(&spa->spa_refcount, tag);
}
