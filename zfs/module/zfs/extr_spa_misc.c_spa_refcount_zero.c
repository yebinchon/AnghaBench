
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ spa_minref; int spa_refcount; } ;
typedef TYPE_1__ spa_t ;
typedef int boolean_t ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;
 int spa_namespace_lock ;
 scalar_t__ zfs_refcount_count (int *) ;

boolean_t
spa_refcount_zero(spa_t *spa)
{
 ASSERT(MUTEX_HELD(&spa_namespace_lock));

 return (zfs_refcount_count(&spa->spa_refcount) == spa->spa_minref);
}
