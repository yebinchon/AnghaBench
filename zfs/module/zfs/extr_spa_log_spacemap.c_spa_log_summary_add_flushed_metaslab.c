
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spa_t ;


 int spa_syncing_txg (int *) ;
 int summary_add_data (int *,int ,int,int ) ;

void
spa_log_summary_add_flushed_metaslab(spa_t *spa)
{
 summary_add_data(spa, spa_syncing_txg(spa), 1, 0);
}
