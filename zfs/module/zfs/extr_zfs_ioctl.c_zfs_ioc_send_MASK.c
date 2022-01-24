#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ zc_guid; int zc_flags; scalar_t__ zc_obj; int /*<<< orphan*/  zc_cookie; int /*<<< orphan*/  zc_fromobj; int /*<<< orphan*/  zc_sendobj; int /*<<< orphan*/  zc_name; int /*<<< orphan*/  zc_objset_type; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  offset_t ;
struct TYPE_14__ {int /*<<< orphan*/  f_offset; int /*<<< orphan*/  f_vnode; } ;
typedef  TYPE_2__ file_t ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
struct TYPE_15__ {int /*<<< orphan*/  ds_dir; } ;
typedef  TYPE_3__ dsl_dataset_t ;
struct TYPE_16__ {int /*<<< orphan*/  dso_dryrun; int /*<<< orphan*/  dso_arg; int /*<<< orphan*/  dso_outfunc; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_4__ dmu_send_outparams_t ;
typedef  int boolean_t ;
struct TYPE_17__ {int /*<<< orphan*/  dd_origin_obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  EBADF ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dump_bytes ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(zfs_cmd_t *zc)
{
	int error;
	offset_t off;
	boolean_t estimate = (zc->zc_guid != 0);
	boolean_t embedok = (zc->zc_flags & 0x1);
	boolean_t large_block_ok = (zc->zc_flags & 0x2);
	boolean_t compressok = (zc->zc_flags & 0x4);
	boolean_t rawok = (zc->zc_flags & 0x8);

	if (zc->zc_obj != 0) {
		dsl_pool_t *dp;
		dsl_dataset_t *tosnap;

		error = FUNC8(zc->zc_name, FTAG, &dp);
		if (error != 0)
			return (error);

		error = FUNC4(dp, zc->zc_sendobj, FTAG, &tosnap);
		if (error != 0) {
			FUNC9(dp, FTAG);
			return (error);
		}

		if (FUNC6(tosnap->ds_dir))
			zc->zc_fromobj =
			    FUNC7(tosnap->ds_dir)->dd_origin_obj;
		FUNC5(tosnap, FTAG);
		FUNC9(dp, FTAG);
	}

	if (estimate) {
		dsl_pool_t *dp;
		dsl_dataset_t *tosnap;
		dsl_dataset_t *fromsnap = NULL;

		error = FUNC8(zc->zc_name, FTAG, &dp);
		if (error != 0)
			return (error);

		error = FUNC4(dp, zc->zc_sendobj,
		    FTAG, &tosnap);
		if (error != 0) {
			FUNC9(dp, FTAG);
			return (error);
		}

		if (zc->zc_fromobj != 0) {
			error = FUNC4(dp, zc->zc_fromobj,
			    FTAG, &fromsnap);
			if (error != 0) {
				FUNC5(tosnap, FTAG);
				FUNC9(dp, FTAG);
				return (error);
			}
		}

		error = FUNC2(tosnap, fromsnap, NULL,
		    compressok || rawok, &zc->zc_objset_type);

		if (fromsnap != NULL)
			FUNC5(fromsnap, FTAG);
		FUNC5(tosnap, FTAG);
		FUNC9(dp, FTAG);
	} else {
		file_t *fp = FUNC10(zc->zc_cookie);
		if (fp == NULL)
			return (FUNC0(EBADF));

		off = fp->f_offset;
		dmu_send_outparams_t out = {0};
		out.dso_outfunc = dump_bytes;
		out.dso_arg = fp->f_vnode;
		out.dso_dryrun = B_FALSE;
		error = FUNC3(zc->zc_name, zc->zc_sendobj,
		    zc->zc_fromobj, embedok, large_block_ok, compressok, rawok,
		    zc->zc_cookie, &off, &out);

		if (FUNC1(fp->f_vnode, fp->f_offset, &off, NULL) == 0)
			fp->f_offset = off;
		FUNC11(zc->zc_cookie);
	}
	return (error);
}