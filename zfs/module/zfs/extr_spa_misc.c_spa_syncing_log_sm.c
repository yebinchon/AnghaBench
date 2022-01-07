
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int space_map_t ;
struct TYPE_3__ {int * spa_syncing_log_sm; } ;
typedef TYPE_1__ spa_t ;



space_map_t *
spa_syncing_log_sm(spa_t *spa)
{
 return (spa->spa_syncing_log_sm);
}
