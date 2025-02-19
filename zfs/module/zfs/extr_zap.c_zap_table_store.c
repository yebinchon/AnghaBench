
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int zt_blk; int zt_nextblk; } ;
typedef TYPE_1__ zap_table_phys_t ;
struct TYPE_11__ {int zap_object; int zap_objset; int zap_rwlock; } ;
typedef TYPE_2__ zap_t ;
typedef int uint64_t ;
typedef int dmu_tx_t ;
struct TYPE_12__ {scalar_t__ db_data; } ;
typedef TYPE_3__ dmu_buf_t ;


 int ASSERT (int) ;
 int DMU_READ_NO_PREFETCH ;
 int FTAG ;
 int FZAP_BLOCK_SHIFT (TYPE_2__*) ;
 int RW_LOCK_HELD (int *) ;
 int dmu_buf_hold (int ,int ,int,int ,TYPE_3__**,int ) ;
 int dmu_buf_rele (TYPE_3__*,int ) ;
 int dmu_buf_will_dirty (TYPE_3__*,int *) ;
 int dprintf (char*,int,int) ;

__attribute__((used)) static int
zap_table_store(zap_t *zap, zap_table_phys_t *tbl, uint64_t idx, uint64_t val,
    dmu_tx_t *tx)
{
 int bs = FZAP_BLOCK_SHIFT(zap);

 ASSERT(RW_LOCK_HELD(&zap->zap_rwlock));
 ASSERT(tbl->zt_blk != 0);

 dprintf("storing %llx at index %llx\n", val, idx);

 uint64_t blk = idx >> (bs-3);
 uint64_t off = idx & ((1<<(bs-3))-1);

 dmu_buf_t *db;
 int err = dmu_buf_hold(zap->zap_objset, zap->zap_object,
     (tbl->zt_blk + blk) << bs, FTAG, &db, DMU_READ_NO_PREFETCH);
 if (err != 0)
  return (err);
 dmu_buf_will_dirty(db, tx);

 if (tbl->zt_nextblk != 0) {
  uint64_t idx2 = idx * 2;
  uint64_t blk2 = idx2 >> (bs-3);
  uint64_t off2 = idx2 & ((1<<(bs-3))-1);
  dmu_buf_t *db2;

  err = dmu_buf_hold(zap->zap_objset, zap->zap_object,
      (tbl->zt_nextblk + blk2) << bs, FTAG, &db2,
      DMU_READ_NO_PREFETCH);
  if (err != 0) {
   dmu_buf_rele(db, FTAG);
   return (err);
  }
  dmu_buf_will_dirty(db2, tx);
  ((uint64_t *)db2->db_data)[off2] = val;
  ((uint64_t *)db2->db_data)[off2+1] = val;
  dmu_buf_rele(db2, FTAG);
 }

 ((uint64_t *)db->db_data)[off] = val;
 dmu_buf_rele(db, FTAG);

 return (0);
}
