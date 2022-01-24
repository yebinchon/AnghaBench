#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_15__ {int /*<<< orphan*/  zbm_ivset_guid; int /*<<< orphan*/  zbm_creation_time; int /*<<< orphan*/  zbm_creation_txg; int /*<<< orphan*/  zbm_guid; } ;
struct dmu_send_params {int outfd; int numfromredactsnaps; int is_clone; TYPE_2__* to_ds; int /*<<< orphan*/  fromredactsnaps; TYPE_1__ ancestor_zb; TYPE_3__* dp; void* rawok; int /*<<< orphan*/  tag; int /*<<< orphan*/ * dso; int /*<<< orphan*/ * off; void* compressok; void* large_block_ok; void* embedok; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  offset_t ;
struct TYPE_16__ {scalar_t__ ds_dir; int /*<<< orphan*/  ds_object; } ;
typedef  TYPE_2__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  ds_hold_flags_t ;
typedef  int /*<<< orphan*/  dmu_send_outparams_t ;
typedef  void* boolean_t ;
struct TYPE_18__ {int /*<<< orphan*/  ds_creation_time; int /*<<< orphan*/  ds_creation_txg; int /*<<< orphan*/  ds_guid; } ;
struct TYPE_17__ {int /*<<< orphan*/  dp_meta_objset; } ;

/* Variables and functions */
 int /*<<< orphan*/  DS_FIELD_IVSET_GUID ; 
 int /*<<< orphan*/  DS_HOLD_FLAG_DECRYPT ; 
 int /*<<< orphan*/  EXDEV ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 void* NUM_SNAPS_NOT_REDACTED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPA_FEATURE_REDACTED_DATASETS ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct dmu_send_params*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int*,int**) ; 
 int FUNC4 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 TYPE_7__* FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (char const*,int /*<<< orphan*/ ,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 

int
FUNC14(const char *pool, uint64_t tosnap, uint64_t fromsnap,
    boolean_t embedok, boolean_t large_block_ok, boolean_t compressok,
    boolean_t rawok, int outfd, offset_t *off, dmu_send_outparams_t *dsop)
{
	int err;
	dsl_dataset_t *fromds;
	ds_hold_flags_t dsflags = (rawok) ? 0 : DS_HOLD_FLAG_DECRYPT;
	struct dmu_send_params dspp = {0};
	dspp.embedok = embedok;
	dspp.large_block_ok = large_block_ok;
	dspp.compressok = compressok;
	dspp.outfd = outfd;
	dspp.off = off;
	dspp.dso = dsop;
	dspp.tag = FTAG;
	dspp.rawok = rawok;

	err = FUNC10(pool, FTAG, &dspp.dp);
	if (err != 0)
		return (err);

	err = FUNC4(dspp.dp, tosnap, dsflags, FTAG,
	    &dspp.to_ds);
	if (err != 0) {
		FUNC11(dspp.dp, FTAG);
		return (err);
	}

	if (fromsnap != 0) {
		err = FUNC4(dspp.dp, fromsnap, dsflags,
		    FTAG, &fromds);
		if (err != 0) {
			FUNC9(dspp.to_ds, dsflags, FTAG);
			FUNC11(dspp.dp, FTAG);
			return (err);
		}
		dspp.ancestor_zb.zbm_guid = FUNC7(fromds)->ds_guid;
		dspp.ancestor_zb.zbm_creation_txg =
		    FUNC7(fromds)->ds_creation_txg;
		dspp.ancestor_zb.zbm_creation_time =
		    FUNC7(fromds)->ds_creation_time;

		if (FUNC6(fromds)) {
			(void) FUNC13(dspp.dp->dp_meta_objset,
			    fromds->ds_object, DS_FIELD_IVSET_GUID, 8, 1,
			    &dspp.ancestor_zb.zbm_ivset_guid);
		}

		/* See dmu_send for the reasons behind this. */
		uint64_t *fromredact;

		if (!FUNC3(fromds,
		    SPA_FEATURE_REDACTED_DATASETS,
		    &dspp.numfromredactsnaps,
		    &fromredact)) {
			dspp.numfromredactsnaps = NUM_SNAPS_NOT_REDACTED;
		} else if (dspp.numfromredactsnaps > 0) {
			uint64_t size = dspp.numfromredactsnaps *
			    sizeof (uint64_t);
			dspp.fromredactsnaps = FUNC12(size, KM_SLEEP);
			FUNC1(fromredact, dspp.fromredactsnaps, size);
		}

		if (!FUNC5(dspp.to_ds, fromds, 0)) {
			err = FUNC0(EXDEV);
		} else {
			dspp.is_clone = (dspp.to_ds->ds_dir !=
			    fromds->ds_dir);
			FUNC8(fromds, FTAG);
			err = FUNC2(&dspp);
		}
	} else {
		dspp.numfromredactsnaps = NUM_SNAPS_NOT_REDACTED;
		err = FUNC2(&dspp);
	}
	FUNC8(dspp.to_ds, FTAG);
	return (err);
}