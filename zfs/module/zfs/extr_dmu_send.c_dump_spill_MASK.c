#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint64_t ;
struct drr_spill {void* drr_compressed_size; int /*<<< orphan*/  drr_mac; int /*<<< orphan*/  drr_iv; int /*<<< orphan*/  drr_salt; int /*<<< orphan*/  drr_compressiontype; int /*<<< orphan*/  drr_flags; int /*<<< orphan*/  drr_toguid; void* drr_length; void* drr_object; } ;
struct TYPE_16__ {scalar_t__ dsc_pending_op; scalar_t__ dsc_fromtxg; int dsc_featureflags; int /*<<< orphan*/  dsc_toguid; TYPE_9__* dsc_drr; } ;
typedef  TYPE_2__ dmu_send_cookie_t ;
typedef  int /*<<< orphan*/  dmu_replay_record_t ;
struct TYPE_17__ {scalar_t__ blk_birth; } ;
typedef  TYPE_3__ blkptr_t ;
struct TYPE_15__ {struct drr_spill drr_spill; } ;
struct TYPE_18__ {int /*<<< orphan*/  drr_type; TYPE_1__ drr_u; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__ const*) ; 
 void* FUNC2 (TYPE_3__ const*) ; 
 void* FUNC3 (TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__ const*) ; 
 scalar_t__ FUNC5 (TYPE_3__ const*) ; 
 int DMU_BACKUP_FEATURE_RAW ; 
 int /*<<< orphan*/  DRR_RAW_BYTESWAP ; 
 int /*<<< orphan*/  DRR_SPILL ; 
 int /*<<< orphan*/  DRR_SPILL_UNMODIFIED ; 
 int /*<<< orphan*/  EINTR ; 
 scalar_t__ PENDING_NONE ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_9__*,int) ; 
 scalar_t__ FUNC8 (TYPE_2__*,void*,void*) ; 
 scalar_t__ zfs_send_unmodified_spill_blocks ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(dmu_send_cookie_t *dscp, const blkptr_t *bp, uint64_t object,
    void *data)
{
	struct drr_spill *drrs = &(dscp->dsc_drr->drr_u.drr_spill);
	uint64_t blksz = FUNC2(bp);
	uint64_t payload_size = blksz;

	if (dscp->dsc_pending_op != PENDING_NONE) {
		if (FUNC8(dscp, NULL, 0) != 0)
			return (FUNC6(EINTR));
		dscp->dsc_pending_op = PENDING_NONE;
	}

	/* write a SPILL record */
	FUNC7(dscp->dsc_drr, sizeof (dmu_replay_record_t));
	dscp->dsc_drr->drr_type = DRR_SPILL;
	drrs->drr_object = object;
	drrs->drr_length = blksz;
	drrs->drr_toguid = dscp->dsc_toguid;

	/* See comment in dump_dnode() for full details */
	if (zfs_send_unmodified_spill_blocks &&
	    (bp->blk_birth <= dscp->dsc_fromtxg)) {
		drrs->drr_flags |= DRR_SPILL_UNMODIFIED;
	}

	/* handle raw send fields */
	if (dscp->dsc_featureflags & DMU_BACKUP_FEATURE_RAW) {
		FUNC0(FUNC4(bp));

		if (FUNC5(bp))
			drrs->drr_flags |= DRR_RAW_BYTESWAP;
		drrs->drr_compressiontype = FUNC1(bp);
		drrs->drr_compressed_size = FUNC3(bp);
		FUNC10(bp, drrs->drr_salt, drrs->drr_iv);
		FUNC9(bp, drrs->drr_mac);
		payload_size = drrs->drr_compressed_size;
	}

	if (FUNC8(dscp, data, payload_size) != 0)
		return (FUNC6(EINTR));
	return (0);
}