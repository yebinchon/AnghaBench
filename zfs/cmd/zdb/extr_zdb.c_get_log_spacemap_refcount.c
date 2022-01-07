
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int spa_sm_logs_by_txg; } ;
typedef TYPE_1__ spa_t ;


 int avl_numnodes (int *) ;

__attribute__((used)) static int
get_log_spacemap_refcount(spa_t *spa)
{
 return (avl_numnodes(&spa->spa_sm_logs_by_txg));
}
