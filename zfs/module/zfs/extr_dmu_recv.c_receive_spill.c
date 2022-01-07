
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct receive_writer_arg {scalar_t__ max_object; scalar_t__ byteswap; int os; scalar_t__ raw; scalar_t__ spill; } ;
struct drr_spill {scalar_t__ drr_compressiontype; scalar_t__ drr_compressed_size; scalar_t__ drr_object; int drr_type; int drr_length; int drr_flags; } ;
typedef int dmu_tx_t ;
typedef size_t dmu_object_byteswap_t ;
struct TYPE_15__ {int db_size; int db_object; } ;
typedef TYPE_1__ dmu_buf_t ;
typedef int dmu_buf_impl_t ;
struct TYPE_16__ {int b_data; } ;
typedef TYPE_2__ arc_buf_t ;
struct TYPE_17__ {int (* ob_func ) (int ,int ) ;} ;


 size_t DMU_OT_BYTESWAP (int ) ;
 int DMU_OT_IS_VALID (int ) ;
 int DMU_READ_NO_DECRYPT ;
 scalar_t__ DRR_SPILL_IS_UNMODIFIED (int ) ;
 int DRR_SPILL_PAYLOAD_SIZE (struct drr_spill*) ;
 int EINVAL ;
 int FTAG ;
 int SET_ERROR (int ) ;
 int SPA_MINBLOCKSIZE ;
 int TXG_WAIT ;
 int VERIFY (int) ;
 int VERIFY0 (int ) ;
 scalar_t__ ZIO_COMPRESS_FUNCTIONS ;
 scalar_t__ ZIO_COMPRESS_OFF ;
 scalar_t__ arc_get_compression (TYPE_2__*) ;
 int arc_is_encrypted (TYPE_2__*) ;
 int dbuf_assign_arcbuf (int *,TYPE_2__*,int *) ;
 scalar_t__ dbuf_spill_set_blksz (TYPE_1__*,int ,int *) ;
 int dmu_bonus_hold (int ,scalar_t__,int ,TYPE_1__**) ;
 int dmu_buf_rele (TYPE_1__*,int ) ;
 int dmu_buf_will_fill (TYPE_1__*,int *) ;
 scalar_t__ dmu_object_info (int ,scalar_t__,int *) ;
 int dmu_objset_spa (int ) ;
 TYPE_7__* dmu_ot_byteswap ;
 int dmu_return_arcbuf (TYPE_2__*) ;
 int dmu_spill_hold_by_bonus (TYPE_1__*,int ,int ,TYPE_1__**) ;
 int dmu_tx_abort (int *) ;
 int dmu_tx_assign (int *,int ) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create (int ) ;
 int dmu_tx_hold_spill (int *,int ) ;
 int spa_maxblocksize (int ) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static int
receive_spill(struct receive_writer_arg *rwa, struct drr_spill *drrs,
    arc_buf_t *abuf)
{
 dmu_tx_t *tx;
 dmu_buf_t *db, *db_spill;
 int err;

 if (drrs->drr_length < SPA_MINBLOCKSIZE ||
     drrs->drr_length > spa_maxblocksize(dmu_objset_spa(rwa->os)))
  return (SET_ERROR(EINVAL));







 if (rwa->spill && DRR_SPILL_IS_UNMODIFIED(drrs->drr_flags)) {
  dmu_return_arcbuf(abuf);
  return (0);
 }

 if (rwa->raw) {
  if (!DMU_OT_IS_VALID(drrs->drr_type) ||
      drrs->drr_compressiontype >= ZIO_COMPRESS_FUNCTIONS ||
      drrs->drr_compressed_size == 0)
   return (SET_ERROR(EINVAL));
 }

 if (dmu_object_info(rwa->os, drrs->drr_object, ((void*)0)) != 0)
  return (SET_ERROR(EINVAL));

 if (drrs->drr_object > rwa->max_object)
  rwa->max_object = drrs->drr_object;

 VERIFY0(dmu_bonus_hold(rwa->os, drrs->drr_object, FTAG, &db));
 if ((err = dmu_spill_hold_by_bonus(db, DMU_READ_NO_DECRYPT, FTAG,
     &db_spill)) != 0) {
  dmu_buf_rele(db, FTAG);
  return (err);
 }

 tx = dmu_tx_create(rwa->os);

 dmu_tx_hold_spill(tx, db->db_object);

 err = dmu_tx_assign(tx, TXG_WAIT);
 if (err != 0) {
  dmu_buf_rele(db, FTAG);
  dmu_buf_rele(db_spill, FTAG);
  dmu_tx_abort(tx);
  return (err);
 }






 if (db_spill->db_size != drrs->drr_length) {
  dmu_buf_will_fill(db_spill, tx);
  VERIFY(0 == dbuf_spill_set_blksz(db_spill,
      drrs->drr_length, tx));
 }

 if (rwa->byteswap && !arc_is_encrypted(abuf) &&
     arc_get_compression(abuf) == ZIO_COMPRESS_OFF) {
  dmu_object_byteswap_t byteswap =
      DMU_OT_BYTESWAP(drrs->drr_type);
  dmu_ot_byteswap[byteswap].ob_func(abuf->b_data,
      DRR_SPILL_PAYLOAD_SIZE(drrs));
 }

 dbuf_assign_arcbuf((dmu_buf_impl_t *)db_spill, abuf, tx);

 dmu_buf_rele(db, FTAG);
 dmu_buf_rele(db_spill, FTAG);

 dmu_tx_commit(tx);
 return (0);
}
