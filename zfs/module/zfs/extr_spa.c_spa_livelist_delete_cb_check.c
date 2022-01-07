
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zthr_t ;
typedef int spa_t ;
typedef int boolean_t ;


 int spa_livelist_delete_check (int *) ;

__attribute__((used)) static boolean_t
spa_livelist_delete_cb_check(void *arg, zthr_t *z)
{
 spa_t *spa = arg;
 return (spa_livelist_delete_check(spa));
}
