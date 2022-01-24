#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vnode_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  offset_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_15__ {scalar_t__ drr_magic; int drr_flags; scalar_t__ drr_fromguid; int /*<<< orphan*/  drr_versioninfo; } ;
struct TYPE_14__ {TYPE_2__ drr_begin; } ;
struct TYPE_16__ {scalar_t__ drr_payloadlen; TYPE_1__ drr_u; } ;
typedef  TYPE_3__ dmu_replay_record_t ;
struct TYPE_17__ {char* drc_tosnap; char* drc_tofs; int drc_featureflags; void* drc_next_rrd; int /*<<< orphan*/  drc_begin_nvl; TYPE_2__* drc_drrb; void* drc_spill; TYPE_3__* drc_drr_begin; int /*<<< orphan*/  drc_voff; int /*<<< orphan*/ * drc_vp; int /*<<< orphan*/  drc_cksum; void* drc_byteswap; int /*<<< orphan*/  drc_clone; void* drc_cred; void* drc_resumable; void* drc_force; } ;
typedef  TYPE_4__ dmu_recv_cookie_t ;
struct TYPE_18__ {char* drba_origin; int /*<<< orphan*/  drba_dcp; void* drba_cred; TYPE_4__* drba_cookie; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_5__ dmu_recv_begin_arg_t ;
typedef  void* boolean_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 void* B_TRUE ; 
 void* FUNC1 () ; 
 int /*<<< orphan*/  DCP_CMD_NONE ; 
 int DMU_BACKUP_FEATURE_RAW ; 
 int DMU_BACKUP_FEATURE_RESUMING ; 
 scalar_t__ DMU_BACKUP_MAGIC ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int DRR_FLAG_SPILL_BLOCK ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZFS_SPACE_CHECK_NORMAL ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  dmu_recv_begin_check ; 
 int /*<<< orphan*/  dmu_recv_begin_sync ; 
 int /*<<< orphan*/  dmu_recv_resume_begin_check ; 
 int /*<<< orphan*/  dmu_recv_resume_begin_sync ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 void* FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (void*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (void*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC15 (TYPE_4__*,scalar_t__,void*) ; 

int
FUNC16(char *tofs, char *tosnap, dmu_replay_record_t *drr_begin,
    boolean_t force, boolean_t resumable, nvlist_t *localprops,
    nvlist_t *hidden_args, char *origin, dmu_recv_cookie_t *drc, vnode_t *vp,
    offset_t *voffp)
{
	dmu_recv_begin_arg_t drba = { 0 };
	int err;

	FUNC5(drc, sizeof (dmu_recv_cookie_t));
	drc->drc_drr_begin = drr_begin;
	drc->drc_drrb = &drr_begin->drr_u.drr_begin;
	drc->drc_tosnap = tosnap;
	drc->drc_tofs = tofs;
	drc->drc_force = force;
	drc->drc_resumable = resumable;
	drc->drc_cred = FUNC1();
	drc->drc_clone = (origin != NULL);

	if (drc->drc_drrb->drr_magic == FUNC0(DMU_BACKUP_MAGIC)) {
		drc->drc_byteswap = B_TRUE;
		(void) FUNC9(drr_begin,
		    sizeof (dmu_replay_record_t), &drc->drc_cksum);
		FUNC4(drr_begin);
	} else if (drc->drc_drrb->drr_magic == DMU_BACKUP_MAGIC) {
		(void) FUNC10(drr_begin,
		    sizeof (dmu_replay_record_t), &drc->drc_cksum);
	} else {
		return (FUNC3(EINVAL));
	}

	drc->drc_vp = vp;
	drc->drc_voff = *voffp;
	drc->drc_featureflags =
	    FUNC2(drc->drc_drrb->drr_versioninfo);

	uint32_t payloadlen = drc->drc_drr_begin->drr_payloadlen;
	void *payload = NULL;
	if (payloadlen != 0)
		payload = FUNC11(payloadlen, KM_SLEEP);

	err = FUNC15(drc, payloadlen,
	    payload);
	if (err != 0) {
		FUNC12(payload, payloadlen);
		return (err);
	}
	if (payloadlen != 0) {
		err = FUNC14(payload, payloadlen, &drc->drc_begin_nvl,
		    KM_SLEEP);
		FUNC12(payload, payloadlen);
		if (err != 0) {
			FUNC12(drc->drc_next_rrd,
			    sizeof (*drc->drc_next_rrd));
			return (err);
		}
	}

	if (drc->drc_drrb->drr_flags & DRR_FLAG_SPILL_BLOCK)
		drc->drc_spill = B_TRUE;

	drba.drba_origin = origin;
	drba.drba_cookie = drc;
	drba.drba_cred = FUNC1();

	if (drc->drc_featureflags & DMU_BACKUP_FEATURE_RESUMING) {
		err = FUNC8(tofs,
		    dmu_recv_resume_begin_check, dmu_recv_resume_begin_sync,
		    &drba, 5, ZFS_SPACE_CHECK_NORMAL);
	} else {

		/*
		 * For non-raw, non-incremental, non-resuming receives the
		 * user can specify encryption parameters on the command line
		 * with "zfs recv -o". For these receives we create a dcp and
		 * pass it to the sync task. Creating the dcp will implicitly
		 * remove the encryption params from the localprops nvlist,
		 * which avoids errors when trying to set these normally
		 * read-only properties. Any other kind of receive that
		 * attempts to set these properties will fail as a result.
		 */
		if ((FUNC2(drc->drc_drrb->drr_versioninfo) &
		    DMU_BACKUP_FEATURE_RAW) == 0 &&
		    origin == NULL && drc->drc_drrb->drr_fromguid == 0) {
			err = FUNC6(DCP_CMD_NONE,
			    localprops, hidden_args, &drba.drba_dcp);
		}

		if (err == 0) {
			err = FUNC8(tofs,
			    dmu_recv_begin_check, dmu_recv_begin_sync,
			    &drba, 5, ZFS_SPACE_CHECK_NORMAL);
			FUNC7(drba.drba_dcp, !!err);
		}
	}

	if (err != 0) {
		FUNC12(drc->drc_next_rrd, sizeof (*drc->drc_next_rrd));
		FUNC13(drc->drc_begin_nvl);
	}
	return (err);
}