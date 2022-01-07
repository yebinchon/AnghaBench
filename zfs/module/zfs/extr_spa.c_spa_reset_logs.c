
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int spa_dsl_pool; } ;
typedef TYPE_1__ spa_t ;


 int DS_FIND_CHILDREN ;
 int dmu_objset_find (int ,int ,int *,int ) ;
 int spa_name (TYPE_1__*) ;
 int txg_wait_synced (int ,int ) ;
 int zil_reset ;

int
spa_reset_logs(spa_t *spa)
{
 int error;

 error = dmu_objset_find(spa_name(spa), zil_reset,
     ((void*)0), DS_FIND_CHILDREN);
 if (error == 0) {





  txg_wait_synced(spa->spa_dsl_pool, 0);
 }
 return (error);
}
