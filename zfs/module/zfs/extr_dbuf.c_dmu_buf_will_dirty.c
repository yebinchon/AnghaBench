
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dmu_tx_t ;
typedef int dmu_buf_t ;


 int DB_RF_MUST_SUCCEED ;
 int DB_RF_NOPREFETCH ;
 int dmu_buf_will_dirty_impl (int *,int,int *) ;

void
dmu_buf_will_dirty(dmu_buf_t *db_fake, dmu_tx_t *tx)
{
 dmu_buf_will_dirty_impl(db_fake,
     DB_RF_MUST_SUCCEED | DB_RF_NOPREFETCH, tx);
}
