
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spa_t ;


 int spa_io_history_init (int *) ;
 int spa_iostats_init (int *) ;
 int spa_mmp_history_init (int *) ;
 int spa_read_history_init (int *) ;
 int spa_state_init (int *) ;
 int spa_tx_assign_init (int *) ;
 int spa_txg_history_init (int *) ;

void
spa_stats_init(spa_t *spa)
{
 spa_read_history_init(spa);
 spa_txg_history_init(spa);
 spa_tx_assign_init(spa);
 spa_io_history_init(spa);
 spa_mmp_history_init(spa);
 spa_state_init(spa);
 spa_iostats_init(spa);
}
