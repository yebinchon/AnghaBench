#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int rm_firstdatacol; int rm_cols; TYPE_1__* rm_col; } ;
typedef  TYPE_2__ raidz_map_t ;
struct TYPE_9__ {scalar_t__ rc_error; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int B_FALSE ; 
 int B_TRUE ; 
 int RAIDZ_ORIGINAL_IMPL ; 
 int VDEV_RAIDZ_MAXPARITY ; 
 size_t VDEV_RAIDZ_P ; 
 size_t VDEV_RAIDZ_Q ; 
 int FUNC1 (TYPE_2__*,int*,int*,int) ; 
 int FUNC2 (TYPE_2__*,int*,int) ; 
 int FUNC3 (TYPE_2__*,int*,int) ; 
 int FUNC4 (TYPE_2__*,int*,int) ; 
 int FUNC5 (TYPE_2__*,int*,int) ; 

int
FUNC6(raidz_map_t *rm, const int *t, int nt)
{
	int tgts[VDEV_RAIDZ_MAXPARITY], *dt;
	int ntgts;
	int i, c, ret;
	int code;
	int nbadparity, nbaddata;
	int parity_valid[VDEV_RAIDZ_MAXPARITY];

	/*
	 * The tgts list must already be sorted.
	 */
	for (i = 1; i < nt; i++) {
		FUNC0(t[i] > t[i - 1]);
	}

	nbadparity = rm->rm_firstdatacol;
	nbaddata = rm->rm_cols - nbadparity;
	ntgts = 0;
	for (i = 0, c = 0; c < rm->rm_cols; c++) {
		if (c < rm->rm_firstdatacol)
			parity_valid[c] = B_FALSE;

		if (i < nt && c == t[i]) {
			tgts[ntgts++] = c;
			i++;
		} else if (rm->rm_col[c].rc_error != 0) {
			tgts[ntgts++] = c;
		} else if (c >= rm->rm_firstdatacol) {
			nbaddata--;
		} else {
			parity_valid[c] = B_TRUE;
			nbadparity--;
		}
	}

	FUNC0(ntgts >= nt);
	FUNC0(nbaddata >= 0);
	FUNC0(nbaddata + nbadparity == ntgts);

	dt = &tgts[nbadparity];

	/* Reconstruct using the new math implementation */
	ret = FUNC1(rm, parity_valid, dt, nbaddata);
	if (ret != RAIDZ_ORIGINAL_IMPL)
		return (ret);

	/*
	 * See if we can use any of our optimized reconstruction routines.
	 */
	switch (nbaddata) {
	case 1:
		if (parity_valid[VDEV_RAIDZ_P])
			return (FUNC3(rm, dt, 1));

		FUNC0(rm->rm_firstdatacol > 1);

		if (parity_valid[VDEV_RAIDZ_Q])
			return (FUNC5(rm, dt, 1));

		FUNC0(rm->rm_firstdatacol > 2);
		break;

	case 2:
		FUNC0(rm->rm_firstdatacol > 1);

		if (parity_valid[VDEV_RAIDZ_P] &&
		    parity_valid[VDEV_RAIDZ_Q])
			return (FUNC4(rm, dt, 2));

		FUNC0(rm->rm_firstdatacol > 2);

		break;
	}

	code = FUNC2(rm, tgts, ntgts);
	FUNC0(code < (1 << VDEV_RAIDZ_MAXPARITY));
	FUNC0(code > 0);
	return (code);
}