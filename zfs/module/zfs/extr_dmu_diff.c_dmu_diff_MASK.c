#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct vnode {int dummy; } ;
struct TYPE_3__ {scalar_t__ ddr_last; scalar_t__ ddr_first; int /*<<< orphan*/  ddr_type; } ;
struct diffarg {int da_err; TYPE_1__ da_ddr; int /*<<< orphan*/ * da_offp; struct vnode* da_vp; } ;
typedef  int /*<<< orphan*/  offset_t ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;
struct TYPE_4__ {int /*<<< orphan*/  ds_creation_txg; } ;

/* Variables and functions */
 int /*<<< orphan*/  DDR_NONE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EXDEV ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int TRAVERSE_NO_DECRYPT ; 
 int TRAVERSE_PRE ; 
 int TRAVERSE_PREFETCH_METADATA ; 
 int /*<<< orphan*/  diff_cb ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (char const*,char) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct diffarg*) ; 
 int /*<<< orphan*/  FUNC11 (struct diffarg*) ; 

int
FUNC12(const char *tosnap_name, const char *fromsnap_name,
    struct vnode *vp, offset_t *offp)
{
	struct diffarg da;
	dsl_dataset_t *fromsnap;
	dsl_dataset_t *tosnap;
	dsl_pool_t *dp;
	int error;
	uint64_t fromtxg;

	if (FUNC9(tosnap_name, '@') == NULL ||
	    FUNC9(fromsnap_name, '@') == NULL)
		return (FUNC0(EINVAL));

	error = FUNC7(tosnap_name, FTAG, &dp);
	if (error != 0)
		return (error);

	error = FUNC1(dp, tosnap_name, FTAG, &tosnap);
	if (error != 0) {
		FUNC8(dp, FTAG);
		return (error);
	}

	error = FUNC1(dp, fromsnap_name, FTAG, &fromsnap);
	if (error != 0) {
		FUNC6(tosnap, FTAG);
		FUNC8(dp, FTAG);
		return (error);
	}

	if (!FUNC2(tosnap, fromsnap, 0)) {
		FUNC6(fromsnap, FTAG);
		FUNC6(tosnap, FTAG);
		FUNC8(dp, FTAG);
		return (FUNC0(EXDEV));
	}

	fromtxg = FUNC5(fromsnap)->ds_creation_txg;
	FUNC6(fromsnap, FTAG);

	FUNC3(tosnap, FTAG);
	FUNC8(dp, FTAG);

	da.da_vp = vp;
	da.da_offp = offp;
	da.da_ddr.ddr_type = DDR_NONE;
	da.da_ddr.ddr_first = da.da_ddr.ddr_last = 0;
	da.da_err = 0;

	/*
	 * Since zfs diff only looks at dnodes which are stored in plaintext
	 * (other than bonus buffers), we don't technically need to decrypt
	 * the dataset to perform this operation. However, the command line
	 * utility will still fail if the keys are not loaded because the
	 * dataset isn't mounted and because it will fail when it attempts to
	 * call the ZFS_IOC_OBJ_TO_STATS ioctl.
	 */
	error = FUNC10(tosnap, fromtxg,
	    TRAVERSE_PRE | TRAVERSE_PREFETCH_METADATA | TRAVERSE_NO_DECRYPT,
	    diff_cb, &da);

	if (error != 0) {
		da.da_err = error;
	} else {
		/* we set the da.da_err we return as side-effect */
		(void) FUNC11(&da);
	}

	FUNC4(tosnap, FTAG);
	FUNC6(tosnap, FTAG);

	return (da.da_err);
}