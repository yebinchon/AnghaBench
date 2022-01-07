
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int boolean_t ;


 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spa_aux_exists (int ,int *,int *,int *) ;
 int spa_l2cache_avl ;
 int spa_l2cache_lock ;

boolean_t
spa_l2cache_exists(uint64_t guid, uint64_t *pool)
{
 boolean_t found;

 mutex_enter(&spa_l2cache_lock);
 found = spa_aux_exists(guid, pool, ((void*)0), &spa_l2cache_avl);
 mutex_exit(&spa_l2cache_lock);

 return (found);
}
