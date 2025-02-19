
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {TYPE_1__* zap_dbuf; } ;
typedef TYPE_4__ zap_t ;
typedef int zap_leaf_t ;
typedef scalar_t__ uint64_t ;
typedef int krw_t ;
typedef int dmu_tx_t ;
struct TYPE_12__ {int zt_shift; } ;
struct TYPE_16__ {scalar_t__ zap_block_type; scalar_t__ zap_magic; TYPE_2__ zap_ptrtbl; } ;
struct TYPE_13__ {scalar_t__ lh_prefix; int lh_prefix_len; } ;
struct TYPE_15__ {TYPE_3__ l_hdr; } ;
struct TYPE_11__ {TYPE_8__* db_data; } ;


 int ASSERT (int) ;
 int EIO ;
 int SET_ERROR (int ) ;
 scalar_t__ ZAP_HASH_IDX (scalar_t__,int ) ;
 scalar_t__ ZAP_MAGIC ;
 scalar_t__ ZBT_HEADER ;
 scalar_t__ ZBT_LEAF ;
 TYPE_8__* zap_f_phys (TYPE_4__*) ;
 int zap_get_leaf_byblk (TYPE_4__*,scalar_t__,int *,int ,int **) ;
 int zap_idx_to_blk (TYPE_4__*,scalar_t__,scalar_t__*) ;
 TYPE_5__* zap_leaf_phys (int *) ;

__attribute__((used)) static int
zap_deref_leaf(zap_t *zap, uint64_t h, dmu_tx_t *tx, krw_t lt, zap_leaf_t **lp)
{
 uint64_t blk;

 ASSERT(zap->zap_dbuf == ((void*)0) ||
     zap_f_phys(zap) == zap->zap_dbuf->db_data);


 if ((zap_f_phys(zap)->zap_block_type != ZBT_LEAF &&
     zap_f_phys(zap)->zap_block_type != ZBT_HEADER) ||
     zap_f_phys(zap)->zap_magic != ZAP_MAGIC) {
  return (SET_ERROR(EIO));
 }

 uint64_t idx = ZAP_HASH_IDX(h, zap_f_phys(zap)->zap_ptrtbl.zt_shift);
 int err = zap_idx_to_blk(zap, idx, &blk);
 if (err != 0)
  return (err);
 err = zap_get_leaf_byblk(zap, blk, tx, lt, lp);

 ASSERT(err ||
     ZAP_HASH_IDX(h, zap_leaf_phys(*lp)->l_hdr.lh_prefix_len) ==
     zap_leaf_phys(*lp)->l_hdr.lh_prefix);
 return (err);
}
