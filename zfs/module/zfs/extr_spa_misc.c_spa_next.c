
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spa_t ;


 int ASSERT (int ) ;
 int * AVL_NEXT (int *,int *) ;
 int MUTEX_HELD (int *) ;
 int * avl_first (int *) ;
 int spa_namespace_avl ;
 int spa_namespace_lock ;

spa_t *
spa_next(spa_t *prev)
{
 ASSERT(MUTEX_HELD(&spa_namespace_lock));

 if (prev)
  return (AVL_NEXT(&spa_namespace_avl, prev));
 else
  return (avl_first(&spa_namespace_avl));
}
