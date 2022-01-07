
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spa_t ;
typedef int spa_feature_t ;
typedef int dmu_tx_t ;


 int FEATURE_ACTION_DECR ;
 int feature_do_action (int *,int ,int ,int *) ;

void
spa_feature_decr(spa_t *spa, spa_feature_t fid, dmu_tx_t *tx)
{
 feature_do_action(spa, fid, FEATURE_ACTION_DECR, tx);
}
