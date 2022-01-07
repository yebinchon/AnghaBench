
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int dnode_t ;
typedef int dmu_tx_t ;
struct TYPE_4__ {int db; } ;
typedef TYPE_1__ dmu_buf_impl_t ;


 int FTAG ;
 TYPE_1__* dbuf_hold_level (int *,int,int ,int ) ;
 int dbuf_rele (TYPE_1__*,int ) ;
 int dmu_buf_will_dirty (int *,int *) ;

__attribute__((used)) static void
dnode_dirty_l1(dnode_t *dn, uint64_t l1blkid, dmu_tx_t *tx)
{
 dmu_buf_impl_t *db = dbuf_hold_level(dn, 1, l1blkid, FTAG);
 if (db != ((void*)0)) {
  dmu_buf_will_dirty(&db->db, tx);
  dbuf_rele(db, FTAG);
 }
}
