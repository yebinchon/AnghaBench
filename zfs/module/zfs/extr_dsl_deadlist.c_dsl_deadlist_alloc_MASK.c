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
typedef  int /*<<< orphan*/  dsl_deadlist_phys_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMU_OT_DEADLIST ; 
 int /*<<< orphan*/  DMU_OT_DEADLIST_HDR ; 
 int /*<<< orphan*/  SPA_OLD_MAXBLOCKSIZE ; 
 scalar_t__ SPA_VERSION_DEADLISTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

uint64_t
FUNC4(objset_t *os, dmu_tx_t *tx)
{
	if (FUNC2(FUNC1(os)) < SPA_VERSION_DEADLISTS)
		return (FUNC0(os, SPA_OLD_MAXBLOCKSIZE, tx));
	return (FUNC3(os, DMU_OT_DEADLIST, DMU_OT_DEADLIST_HDR,
	    sizeof (dsl_deadlist_phys_t), tx));
}