#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  recvname ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
struct TYPE_9__ {int /*<<< orphan*/  ds_bp_rwlock; } ;
typedef  TYPE_2__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  ds_hold_flags_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_10__ {TYPE_1__* drba_cookie; } ;
typedef  TYPE_3__ dmu_recv_begin_arg_t ;
struct TYPE_8__ {char* drc_tofs; int drc_featureflags; TYPE_2__* drc_ds; void* drc_raw; void* drc_newfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* B_TRUE ; 
 int DMU_BACKUP_FEATURE_RAW ; 
 int /*<<< orphan*/  DS_HOLD_FLAG_DECRYPT ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  dmu_recv_tag ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**) ; 
 char* recv_clone_name ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC11(void *arg, dmu_tx_t *tx)
{
	dmu_recv_begin_arg_t *drba = arg;
	dsl_pool_t *dp = FUNC4(tx);
	const char *tofs = drba->drba_cookie->drc_tofs;
	uint64_t featureflags = drba->drba_cookie->drc_featureflags;
	dsl_dataset_t *ds;
	ds_hold_flags_t dsflags = 0;
	/* 6 extra bytes for /%recv */
	char recvname[ZFS_MAX_DATASET_NAME_LEN + 6];

	(void) FUNC9(recvname, sizeof (recvname), "%s/%s", tofs,
	    recv_clone_name);

	if (featureflags & DMU_BACKUP_FEATURE_RAW) {
		drba->drba_cookie->drc_raw = B_TRUE;
	} else {
		dsflags |= DS_HOLD_FLAG_DECRYPT;
	}

	if (FUNC6(dp, recvname, dsflags, dmu_recv_tag, &ds)
	    != 0) {
		/* %recv does not exist; continue in tofs */
		FUNC3(FUNC6(dp, tofs, dsflags, dmu_recv_tag,
		    &ds));
		drba->drba_cookie->drc_newfs = B_TRUE;
	}

	FUNC0(FUNC2(ds));
	FUNC7(&ds->ds_bp_rwlock, RW_READER, FTAG);
	FUNC0(!FUNC1(FUNC5(ds)) ||
	    drba->drba_cookie->drc_raw);
	FUNC8(&ds->ds_bp_rwlock, FTAG);

	drba->drba_cookie->drc_ds = ds;

	FUNC10(ds, "resume receive", tx, " ");
}