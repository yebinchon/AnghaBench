
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int spa_t ;


 int spa_syncing_txg (int *) ;
 int summary_add_data (int *,int ,int ,int ) ;

__attribute__((used)) static void
spa_log_summary_add_incoming_blocks(spa_t *spa, uint64_t nblocks)
{
 summary_add_data(spa, spa_syncing_txg(spa), 0, nblocks);
}
