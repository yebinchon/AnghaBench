
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ spa_log_flushall_txg; } ;
typedef TYPE_1__ spa_t ;
typedef int boolean_t ;



boolean_t
spa_flush_all_logs_requested(spa_t *spa)
{
 return (spa->spa_log_flushall_txg != 0);
}
