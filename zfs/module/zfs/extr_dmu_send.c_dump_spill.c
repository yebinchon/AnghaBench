
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef void* uint64_t ;
struct drr_spill {void* drr_compressed_size; int drr_mac; int drr_iv; int drr_salt; int drr_compressiontype; int drr_flags; int drr_toguid; void* drr_length; void* drr_object; } ;
struct TYPE_16__ {scalar_t__ dsc_pending_op; scalar_t__ dsc_fromtxg; int dsc_featureflags; int dsc_toguid; TYPE_9__* dsc_drr; } ;
typedef TYPE_2__ dmu_send_cookie_t ;
typedef int dmu_replay_record_t ;
struct TYPE_17__ {scalar_t__ blk_birth; } ;
typedef TYPE_3__ blkptr_t ;
struct TYPE_15__ {struct drr_spill drr_spill; } ;
struct TYPE_18__ {int drr_type; TYPE_1__ drr_u; } ;


 int ASSERT (int ) ;
 int BP_GET_COMPRESS (TYPE_3__ const*) ;
 void* BP_GET_LSIZE (TYPE_3__ const*) ;
 void* BP_GET_PSIZE (TYPE_3__ const*) ;
 int BP_IS_PROTECTED (TYPE_3__ const*) ;
 scalar_t__ BP_SHOULD_BYTESWAP (TYPE_3__ const*) ;
 int DMU_BACKUP_FEATURE_RAW ;
 int DRR_RAW_BYTESWAP ;
 int DRR_SPILL ;
 int DRR_SPILL_UNMODIFIED ;
 int EINTR ;
 scalar_t__ PENDING_NONE ;
 int SET_ERROR (int ) ;
 int bzero (TYPE_9__*,int) ;
 scalar_t__ dump_record (TYPE_2__*,void*,void*) ;
 scalar_t__ zfs_send_unmodified_spill_blocks ;
 int zio_crypt_decode_mac_bp (TYPE_3__ const*,int ) ;
 int zio_crypt_decode_params_bp (TYPE_3__ const*,int ,int ) ;

__attribute__((used)) static int
dump_spill(dmu_send_cookie_t *dscp, const blkptr_t *bp, uint64_t object,
    void *data)
{
 struct drr_spill *drrs = &(dscp->dsc_drr->drr_u.drr_spill);
 uint64_t blksz = BP_GET_LSIZE(bp);
 uint64_t payload_size = blksz;

 if (dscp->dsc_pending_op != PENDING_NONE) {
  if (dump_record(dscp, ((void*)0), 0) != 0)
   return (SET_ERROR(EINTR));
  dscp->dsc_pending_op = PENDING_NONE;
 }


 bzero(dscp->dsc_drr, sizeof (dmu_replay_record_t));
 dscp->dsc_drr->drr_type = DRR_SPILL;
 drrs->drr_object = object;
 drrs->drr_length = blksz;
 drrs->drr_toguid = dscp->dsc_toguid;


 if (zfs_send_unmodified_spill_blocks &&
     (bp->blk_birth <= dscp->dsc_fromtxg)) {
  drrs->drr_flags |= DRR_SPILL_UNMODIFIED;
 }


 if (dscp->dsc_featureflags & DMU_BACKUP_FEATURE_RAW) {
  ASSERT(BP_IS_PROTECTED(bp));

  if (BP_SHOULD_BYTESWAP(bp))
   drrs->drr_flags |= DRR_RAW_BYTESWAP;
  drrs->drr_compressiontype = BP_GET_COMPRESS(bp);
  drrs->drr_compressed_size = BP_GET_PSIZE(bp);
  zio_crypt_decode_params_bp(bp, drrs->drr_salt, drrs->drr_iv);
  zio_crypt_decode_mac_bp(bp, drrs->drr_mac);
  payload_size = drrs->drr_compressed_size;
 }

 if (dump_record(dscp, data, payload_size) != 0)
  return (SET_ERROR(EINTR));
 return (0);
}
