#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_13__ {TYPE_1__* sm_phys; int /*<<< orphan*/  sm_os; int /*<<< orphan*/  sm_dbuf; } ;
typedef  TYPE_3__ space_map_t ;
typedef  int /*<<< orphan*/  maptype_t ;
struct TYPE_14__ {TYPE_2__* tx_pool; } ;
typedef  TYPE_4__ dmu_tx_t ;
typedef  int /*<<< orphan*/  dentry ;
struct TYPE_12__ {int /*<<< orphan*/  dp_spa; } ;
struct TYPE_11__ {int smp_length; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SM_DEBUG_PREFIX ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 

__attribute__((used)) static void
FUNC9(space_map_t *sm, maptype_t maptype, dmu_tx_t *tx)
{
	FUNC4(sm->sm_dbuf, tx);

	uint64_t dentry = FUNC3(SM_DEBUG_PREFIX) |
	    FUNC0(maptype) |
	    FUNC1(FUNC7(tx->tx_pool->dp_spa)) |
	    FUNC2(FUNC5(tx));

	FUNC6(sm->sm_os, FUNC8(sm), sm->sm_phys->smp_length,
	    sizeof (dentry), &dentry, tx);

	sm->sm_phys->smp_length += sizeof (dentry);
}