
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int sus_nblocks; } ;
struct TYPE_5__ {TYPE_1__ spa_unflushed_stats; } ;
typedef TYPE_2__ spa_t ;



uint64_t
spa_log_sm_nblocks(spa_t *spa)
{
 return (spa->spa_unflushed_stats.sus_nblocks);
}
