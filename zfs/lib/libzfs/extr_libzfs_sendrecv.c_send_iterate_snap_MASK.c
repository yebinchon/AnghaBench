#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ dds_guid; scalar_t__ dds_creation_txg; } ;
struct TYPE_8__ {int /*<<< orphan*/  zfs_name; TYPE_1__ zfs_dmustats; } ;
typedef  TYPE_2__ zfs_handle_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_9__ {scalar_t__ tosnap_txg; scalar_t__ parent_fromsnap_guid; int /*<<< orphan*/  snapholds; scalar_t__ holds; int /*<<< orphan*/  snapprops; int /*<<< orphan*/  backup; void* seento; void* seenfrom; int /*<<< orphan*/  recursive; int /*<<< orphan*/  parent_snaps; int /*<<< orphan*/ * tosnap; scalar_t__ verbose; int /*<<< orphan*/ * fromsnap; } ;
typedef  TYPE_3__ send_data_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int boolean_t ;

/* Variables and functions */
 void* B_TRUE ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC12 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC14(zfs_handle_t *zhp, void *arg)
{
	send_data_t *sd = arg;
	uint64_t guid = zhp->zfs_dmustats.dds_guid;
	uint64_t txg = zhp->zfs_dmustats.dds_creation_txg;
	char *snapname;
	nvlist_t *nv;
	boolean_t isfromsnap, istosnap, istosnapwithnofrom;

	snapname = FUNC12(zhp->zfs_name, '@')+1;
	isfromsnap = (sd->fromsnap != NULL &&
	    FUNC11(sd->fromsnap, snapname) == 0);
	istosnap = (sd->tosnap != NULL && (FUNC11(sd->tosnap, snapname) == 0));
	istosnapwithnofrom = (istosnap && sd->fromsnap == NULL);

	if (sd->tosnap_txg != 0 && txg > sd->tosnap_txg) {
		if (sd->verbose) {
			(void) FUNC4(stderr, FUNC1(TEXT_DOMAIN,
			    "skipping snapshot %s because it was created "
			    "after the destination snapshot (%s)\n"),
			    zhp->zfs_name, sd->tosnap);
		}
		FUNC13(zhp);
		return (0);
	}

	FUNC0(0 == FUNC7(sd->parent_snaps, snapname, guid));
	/*
	 * NB: if there is no fromsnap here (it's a newly created fs in
	 * an incremental replication), we will substitute the tosnap.
	 */
	if (isfromsnap || (sd->parent_fromsnap_guid == 0 && istosnap)) {
		sd->parent_fromsnap_guid = guid;
	}

	if (!sd->recursive) {
		if (!sd->seenfrom && isfromsnap) {
			sd->seenfrom = B_TRUE;
			FUNC13(zhp);
			return (0);
		}

		if ((sd->seento || !sd->seenfrom) && !istosnapwithnofrom) {
			FUNC13(zhp);
			return (0);
		}

		if (istosnap)
			sd->seento = B_TRUE;
	}

	FUNC0(0 == FUNC8(&nv, NV_UNIQUE_NAME, 0));
	FUNC10(zhp, sd->backup, nv);
	FUNC0(0 == FUNC6(sd->snapprops, snapname, nv));
	FUNC9(nv);
	if (sd->holds) {
		nvlist_t *holds = FUNC2();
		int err = FUNC5(zhp->zfs_name, &holds);
		if (err == 0) {
			FUNC0(0 == FUNC6(sd->snapholds,
			    snapname, holds));
		}
		FUNC3(holds);
	}

	FUNC13(zhp);
	return (0);
}