
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int dmu_tx_t ;
typedef int dmu_buf_t ;
typedef int dmu_buf_impl_t ;
typedef int arc_buf_t ;


 int DB_DNODE (int *) ;
 int DB_DNODE_ENTER (int *) ;
 int DB_DNODE_EXIT (int *) ;
 int dmu_assign_arcbuf_by_dnode (int ,int ,int *,int *) ;

int
dmu_assign_arcbuf_by_dbuf(dmu_buf_t *handle, uint64_t offset, arc_buf_t *buf,
    dmu_tx_t *tx)
{
 int err;
 dmu_buf_impl_t *dbuf = (dmu_buf_impl_t *)handle;

 DB_DNODE_ENTER(dbuf);
 err = dmu_assign_arcbuf_by_dnode(DB_DNODE(dbuf), offset, buf, tx);
 DB_DNODE_EXIT(dbuf);

 return (err);
}
