
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spa_t ;


 int spa_health_destroy (int *) ;
 int spa_io_history_destroy (int *) ;
 int spa_iostats_destroy (int *) ;
 int spa_mmp_history_destroy (int *) ;
 int spa_read_history_destroy (int *) ;
 int spa_tx_assign_destroy (int *) ;
 int spa_txg_history_destroy (int *) ;

void
spa_stats_destroy(spa_t *spa)
{
 spa_iostats_destroy(spa);
 spa_health_destroy(spa);
 spa_tx_assign_destroy(spa);
 spa_txg_history_destroy(spa);
 spa_read_history_destroy(spa);
 spa_io_history_destroy(spa);
 spa_mmp_history_destroy(spa);
}
