
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ spa_livelists_to_delete; } ;
typedef TYPE_1__ spa_t ;
typedef int boolean_t ;



boolean_t
spa_livelist_delete_check(spa_t *spa)
{
 return (spa->spa_livelists_to_delete != 0);
}
