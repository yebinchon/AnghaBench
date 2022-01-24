#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint64_t ;
struct drr_write_embedded {int drr_length; int /*<<< orphan*/  drr_psize; int /*<<< orphan*/  drr_lsize; int /*<<< orphan*/  drr_etype; int /*<<< orphan*/  drr_compression; int /*<<< orphan*/  drr_toguid; void* drr_offset; void* drr_object; } ;
struct TYPE_7__ {scalar_t__ dsc_pending_op; int /*<<< orphan*/  dsc_toguid; TYPE_5__* dsc_drr; } ;
typedef  TYPE_2__ dmu_send_cookie_t ;
typedef  int /*<<< orphan*/  dmu_replay_record_t ;
typedef  int /*<<< orphan*/  blkptr_t ;
struct TYPE_6__ {struct drr_write_embedded drr_write_embedded; } ;
struct TYPE_8__ {int /*<<< orphan*/  drr_type; TYPE_1__ drr_u; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int BPE_PAYLOAD_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  DRR_WRITE_EMBEDDED ; 
 int /*<<< orphan*/  EINTR ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ PENDING_NONE ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*,char*) ; 
 scalar_t__ FUNC10 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(dmu_send_cookie_t *dscp, uint64_t object, uint64_t offset,
    int blksz, const blkptr_t *bp)
{
	char buf[BPE_PAYLOAD_SIZE];
	struct drr_write_embedded *drrw =
	    &(dscp->dsc_drr->drr_u.drr_write_embedded);

	if (dscp->dsc_pending_op != PENDING_NONE) {
		if (FUNC10(dscp, NULL, 0) != 0)
			return (FUNC7(EINTR));
		dscp->dsc_pending_op = PENDING_NONE;
	}

	FUNC0(FUNC5(bp));

	FUNC8(dscp->dsc_drr, sizeof (dmu_replay_record_t));
	dscp->dsc_drr->drr_type = DRR_WRITE_EMBEDDED;
	drrw->drr_object = object;
	drrw->drr_offset = offset;
	drrw->drr_length = blksz;
	drrw->drr_toguid = dscp->dsc_toguid;
	drrw->drr_compression = FUNC4(bp);
	drrw->drr_etype = FUNC1(bp);
	drrw->drr_lsize = FUNC2(bp);
	drrw->drr_psize = FUNC3(bp);

	FUNC9(bp, buf);

	if (FUNC10(dscp, buf, FUNC6(drrw->drr_psize, 8)) != 0)
		return (FUNC7(EINTR));
	return (0);
}