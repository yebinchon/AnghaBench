#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int /*<<< orphan*/  bpobj_phys_t ;

/* Variables and functions */
 int BPOBJ_SIZE_V0 ; 
 int BPOBJ_SIZE_V1 ; 
 int BPOBJ_SIZE_V2 ; 
 int /*<<< orphan*/  DMU_OT_BPOBJ ; 
 int /*<<< orphan*/  DMU_OT_BPOBJ_HDR ; 
 int /*<<< orphan*/  SPA_FEATURE_LIVELIST ; 
 scalar_t__ SPA_VERSION_BPOBJ_ACCOUNT ; 
 scalar_t__ SPA_VERSION_DEADLISTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

uint64_t
FUNC4(objset_t *os, int blocksize, dmu_tx_t *tx)
{
	int size;

	if (FUNC3(FUNC1(os)) < SPA_VERSION_BPOBJ_ACCOUNT)
		size = BPOBJ_SIZE_V0;
	else if (FUNC3(FUNC1(os)) < SPA_VERSION_DEADLISTS)
		size = BPOBJ_SIZE_V1;
	else if (!FUNC2(FUNC1(os),
	    SPA_FEATURE_LIVELIST))
		size = BPOBJ_SIZE_V2;
	else
		size = sizeof (bpobj_phys_t);

	return (FUNC0(os, DMU_OT_BPOBJ, blocksize,
	    DMU_OT_BPOBJ_HDR, size, tx));
}