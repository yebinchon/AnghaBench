
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * spa_dsl_pool; } ;
typedef TYPE_1__ spa_t ;
typedef int dsl_pool_t ;



dsl_pool_t *
spa_get_dsl(spa_t *spa)
{
 return (spa->spa_dsl_pool);
}
