
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ spa_checkpoint_txg; } ;
typedef TYPE_1__ spa_t ;
typedef int boolean_t ;



boolean_t
spa_has_checkpoint(spa_t *spa)
{
 return (spa->spa_checkpoint_txg != 0);
}
