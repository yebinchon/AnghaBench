#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ zc_ena; } ;
struct TYPE_8__ {int /*<<< orphan*/  zc_node; TYPE_1__ zc_data; } ;
typedef  TYPE_2__ zfs_case_t ;
typedef  int /*<<< orphan*/  uu_list_walk_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  fmd_hdl_t ;

/* Variables and functions */
 int /*<<< orphan*/  UU_WALK_ROBUST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zfs_case_pool ; 
 int /*<<< orphan*/  zfs_cases ; 

void
FUNC11(fmd_hdl_t *hdl)
{
	zfs_case_t *zcp;
	uu_list_walk_t *walk;
	libzfs_handle_t *zhdl;

	/*
	 * Remove all active cases.
	 */
	walk = FUNC10(zfs_cases, UU_WALK_ROBUST);
	while ((zcp = FUNC9(walk)) != NULL) {
		FUNC0(hdl, "removing case ena %llu",
		    (long long unsigned)zcp->zc_data.zc_ena);
		FUNC7(zfs_cases, zcp);
		FUNC5(zcp, &zcp->zc_node, zfs_case_pool);
		FUNC1(hdl, zcp, sizeof (zfs_case_t));
	}
	FUNC8(walk);

	FUNC4(zfs_cases);
	FUNC6(zfs_case_pool);

	zhdl = FUNC2(hdl);
	FUNC3(zhdl);
}