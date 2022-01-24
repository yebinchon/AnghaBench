#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uncomp ;
typedef  int uint64_t ;
typedef  char* u_longlong_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  comp ;
typedef  int /*<<< orphan*/  bytes ;
struct TYPE_2__ {int bpo_num_blkptrs; scalar_t__ bpo_num_freed; scalar_t__ bpo_num_subobjs; scalar_t__ bpo_subobjs; int /*<<< orphan*/  bpo_uncomp; int /*<<< orphan*/  bpo_comp; int /*<<< orphan*/  bpo_bytes; } ;
typedef  TYPE_1__ bpobj_phys_t ;
typedef  int /*<<< orphan*/  bp ;
typedef  int /*<<< orphan*/  blkptr_t ;
typedef  int /*<<< orphan*/  blkbuf ;

/* Variables and functions */
 size_t BPOBJ_SIZE_V1 ; 
 size_t BPOBJ_SIZE_V2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int BP_SPRINTF_LEN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int NN_NUMBUF_SZ ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int* dump_opt ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC6(objset_t *os, uint64_t object, void *data, size_t size)
{
	bpobj_phys_t *bpop = data;
	uint64_t i;
	char bytes[32], comp[32], uncomp[32];

	/* make sure the output won't get truncated */
	FUNC1(sizeof (bytes) >= NN_NUMBUF_SZ);
	FUNC1(sizeof (comp) >= NN_NUMBUF_SZ);
	FUNC1(sizeof (uncomp) >= NN_NUMBUF_SZ);

	if (bpop == NULL)
		return;

	FUNC5(bpop->bpo_bytes, bytes, sizeof (bytes));
	FUNC5(bpop->bpo_comp, comp, sizeof (comp));
	FUNC5(bpop->bpo_uncomp, uncomp, sizeof (uncomp));

	(void) FUNC3("\t\tnum_blkptrs = %llu\n",
	    (u_longlong_t)bpop->bpo_num_blkptrs);
	(void) FUNC3("\t\tbytes = %s\n", bytes);
	if (size >= BPOBJ_SIZE_V1) {
		(void) FUNC3("\t\tcomp = %s\n", comp);
		(void) FUNC3("\t\tuncomp = %s\n", uncomp);
	}
	if (size >= BPOBJ_SIZE_V2) {
		(void) FUNC3("\t\tsubobjs = %llu\n",
		    (u_longlong_t)bpop->bpo_subobjs);
		(void) FUNC3("\t\tnum_subobjs = %llu\n",
		    (u_longlong_t)bpop->bpo_num_subobjs);
	}
	if (size >= sizeof (*bpop)) {
		(void) FUNC3("\t\tnum_freed = %llu\n",
		    (u_longlong_t)bpop->bpo_num_freed);
	}

	if (dump_opt['d'] < 5)
		return;

	for (i = 0; i < bpop->bpo_num_blkptrs; i++) {
		char blkbuf[BP_SPRINTF_LEN];
		blkptr_t bp;

		int err = FUNC2(os, object,
		    i * sizeof (bp), sizeof (bp), &bp, 0);
		if (err != 0) {
			(void) FUNC3("got error %u from dmu_read\n", err);
			break;
		}
		FUNC4(blkbuf, sizeof (blkbuf), &bp,
		    FUNC0(&bp));
		(void) FUNC3("\t%s\n", blkbuf);
	}
}