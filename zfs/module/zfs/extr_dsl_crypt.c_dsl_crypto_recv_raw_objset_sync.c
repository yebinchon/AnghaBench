
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef int zio_t ;
typedef int uint_t ;
typedef int uint8_t ;
typedef void* uint64_t ;
struct TYPE_26__ {void** os_next_write_raw; TYPE_1__* os_phys; int os_phys_buf; } ;
typedef TYPE_2__ objset_t ;
typedef int nvlist_t ;
struct TYPE_27__ {int dp_spa; } ;
typedef TYPE_3__ dsl_pool_t ;
struct TYPE_28__ {int ds_dbuf; int ds_bp_rwlock; } ;
typedef TYPE_4__ dsl_dataset_t ;
struct TYPE_29__ {int dn_struct_rwlock; void* dn_checksum; void* dn_compress; } ;
typedef TYPE_5__ dnode_t ;
struct TYPE_30__ {size_t tx_txg; TYPE_3__* tx_pool; } ;
typedef TYPE_6__ dmu_tx_t ;
typedef int dmu_objset_type_t ;
typedef void* boolean_t ;
struct TYPE_25__ {int os_local_mac; int os_portable_mac; } ;


 scalar_t__ BP_IS_HOLE (int ) ;
 void* B_FALSE ;
 void* B_TRUE ;
 TYPE_5__* DMU_META_DNODE (TYPE_2__*) ;
 int FTAG ;
 int RW_READER ;
 int RW_WRITER ;
 size_t TXG_MASK ;
 int VERIFY0 (int ) ;
 int ZIO_FLAG_MUSTSUCCEED ;
 int ZIO_OBJSET_MAC_LEN ;
 int arc_release (int ,int *) ;
 int bcopy (int *,int ,int ) ;
 int bzero (int ,int ) ;
 int dmu_buf_add_ref (int ,TYPE_4__*) ;
 int dmu_objset_create_impl_dnstats (int ,TYPE_4__*,int ,int ,void*,void*,void*,TYPE_6__*) ;
 int dmu_objset_from_ds (TYPE_4__*,TYPE_2__**) ;
 int dnode_new_blkid (TYPE_5__*,void*,TYPE_6__*,void*,void*) ;
 int dsl_dataset_dirty (TYPE_4__*,TYPE_6__*) ;
 int dsl_dataset_get_blkptr (TYPE_4__*) ;
 int dsl_dataset_sync (TYPE_4__*,int *,TYPE_6__*) ;
 int dsl_dataset_sync_done (TYPE_4__*,TYPE_6__*) ;
 void* fnvlist_lookup_uint64 (int *,char*) ;
 int nvlist_lookup_uint8_array (int *,char*,int **,int *) ;
 int rrw_enter (int *,int ,int ) ;
 int rrw_exit (int *,int ) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int * zio_root (int ,int *,int *,int ) ;
 int zio_wait (int *) ;

__attribute__((used)) static void
dsl_crypto_recv_raw_objset_sync(dsl_dataset_t *ds, dmu_objset_type_t ostype,
    nvlist_t *nvl, dmu_tx_t *tx)
{
 dsl_pool_t *dp = tx->tx_pool;
 objset_t *os;
 dnode_t *mdn;
 zio_t *zio;
 uint8_t *portable_mac;
 uint_t len;
 uint64_t compress, checksum, nlevels, blksz, ibs, maxblkid;
 boolean_t newds = B_FALSE;

 VERIFY0(dmu_objset_from_ds(ds, &os));
 mdn = DMU_META_DNODE(os);






 compress = fnvlist_lookup_uint64(nvl, "mdn_compress");
 checksum = fnvlist_lookup_uint64(nvl, "mdn_checksum");
 nlevels = fnvlist_lookup_uint64(nvl, "mdn_nlevels");
 blksz = fnvlist_lookup_uint64(nvl, "mdn_blksz");
 ibs = fnvlist_lookup_uint64(nvl, "mdn_indblkshift");
 maxblkid = fnvlist_lookup_uint64(nvl, "mdn_maxblkid");
 VERIFY0(nvlist_lookup_uint8_array(nvl, "portable_mac", &portable_mac,
     &len));


 rrw_enter(&ds->ds_bp_rwlock, RW_READER, FTAG);
 if (BP_IS_HOLE(dsl_dataset_get_blkptr(ds))) {
  (void) dmu_objset_create_impl_dnstats(dp->dp_spa, ds,
      dsl_dataset_get_blkptr(ds), ostype, nlevels, blksz,
      ibs, tx);
  newds = B_TRUE;
 }
 rrw_exit(&ds->ds_bp_rwlock, FTAG);







 arc_release(os->os_phys_buf, &os->os_phys_buf);
 bcopy(portable_mac, os->os_phys->os_portable_mac, ZIO_OBJSET_MAC_LEN);
 bzero(os->os_phys->os_local_mac, ZIO_OBJSET_MAC_LEN);
 os->os_next_write_raw[tx->tx_txg & TXG_MASK] = B_TRUE;


 mdn->dn_compress = compress;
 mdn->dn_checksum = checksum;

 rw_enter(&mdn->dn_struct_rwlock, RW_WRITER);
 dnode_new_blkid(mdn, maxblkid, tx, B_FALSE, B_TRUE);
 rw_exit(&mdn->dn_struct_rwlock);






 if (newds) {
  dsl_dataset_dirty(ds, tx);
 } else {
  zio = zio_root(dp->dp_spa, ((void*)0), ((void*)0), ZIO_FLAG_MUSTSUCCEED);
  dsl_dataset_sync(ds, zio, tx);
  VERIFY0(zio_wait(zio));


  dmu_buf_add_ref(ds->ds_dbuf, ds);
  dsl_dataset_sync_done(ds, tx);
 }
}
