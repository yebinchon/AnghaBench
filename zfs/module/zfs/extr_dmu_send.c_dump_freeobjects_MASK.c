#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct drr_freeobjects {scalar_t__ drr_firstobj; scalar_t__ drr_numobjs; int /*<<< orphan*/  drr_toguid; } ;
struct TYPE_8__ {scalar_t__ dsc_pending_op; int /*<<< orphan*/  dsc_toguid; TYPE_5__* dsc_drr; int /*<<< orphan*/  dsc_os; } ;
typedef  TYPE_2__ dmu_send_cookie_t ;
typedef  int /*<<< orphan*/  dmu_replay_record_t ;
struct TYPE_10__ {int dn_maxblkid; } ;
struct TYPE_7__ {struct drr_freeobjects drr_freeobjects; } ;
struct TYPE_9__ {int /*<<< orphan*/  drr_type; TYPE_1__ drr_u; } ;

/* Variables and functions */
 TYPE_6__* FUNC0 (int /*<<< orphan*/ ) ; 
 int DNODES_PER_BLOCK ; 
 int /*<<< orphan*/  DRR_FREEOBJECTS ; 
 int /*<<< orphan*/  EINTR ; 
 scalar_t__ PENDING_FREEOBJECTS ; 
 scalar_t__ PENDING_NONE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ UINT64_MAX ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(dmu_send_cookie_t *dscp, uint64_t firstobj, uint64_t numobjs)
{
	struct drr_freeobjects *drrfo = &(dscp->dsc_drr->drr_u.drr_freeobjects);
	uint64_t maxobj = DNODES_PER_BLOCK *
	    (FUNC0(dscp->dsc_os)->dn_maxblkid + 1);

	/*
	 * ZoL < 0.7 does not handle large FREEOBJECTS records correctly,
	 * leading to zfs recv never completing. to avoid this issue, don't
	 * send FREEOBJECTS records for object IDs which cannot exist on the
	 * receiving side.
	 */
	if (maxobj > 0) {
		if (maxobj < firstobj)
			return (0);

		if (maxobj < firstobj + numobjs)
			numobjs = maxobj - firstobj;
	}

	/*
	 * If there is a pending op, but it's not PENDING_FREEOBJECTS,
	 * push it out, since free block aggregation can only be done for
	 * blocks of the same type (i.e., DRR_FREE records can only be
	 * aggregated with other DRR_FREE records.  DRR_FREEOBJECTS records
	 * can only be aggregated with other DRR_FREEOBJECTS records).
	 */
	if (dscp->dsc_pending_op != PENDING_NONE &&
	    dscp->dsc_pending_op != PENDING_FREEOBJECTS) {
		if (FUNC3(dscp, NULL, 0) != 0)
			return (FUNC1(EINTR));
		dscp->dsc_pending_op = PENDING_NONE;
	}
	if (numobjs == 0)
		numobjs = UINT64_MAX - firstobj;

	if (dscp->dsc_pending_op == PENDING_FREEOBJECTS) {
		/*
		 * See whether this free object array can be aggregated
		 * with pending one
		 */
		if (drrfo->drr_firstobj + drrfo->drr_numobjs == firstobj) {
			drrfo->drr_numobjs += numobjs;
			return (0);
		} else {
			/* can't be aggregated.  Push out pending record */
			if (FUNC3(dscp, NULL, 0) != 0)
				return (FUNC1(EINTR));
			dscp->dsc_pending_op = PENDING_NONE;
		}
	}

	/* write a FREEOBJECTS record */
	FUNC2(dscp->dsc_drr, sizeof (dmu_replay_record_t));
	dscp->dsc_drr->drr_type = DRR_FREEOBJECTS;
	drrfo->drr_firstobj = firstobj;
	drrfo->drr_numobjs = numobjs;
	drrfo->drr_toguid = dscp->dsc_toguid;

	dscp->dsc_pending_op = PENDING_FREEOBJECTS;

	return (0);
}