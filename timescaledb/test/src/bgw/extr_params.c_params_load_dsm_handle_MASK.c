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
typedef  int /*<<< orphan*/  dsm_handle ;
struct TYPE_2__ {int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  int /*<<< orphan*/  HeapScanDesc ;
typedef  TYPE_1__ FormData_bgw_dsm_handle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  SnapshotSelf ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static dsm_handle
FUNC10()
{
	Relation rel;
	HeapScanDesc scan;
	HeapTuple tuple;
	FormData_bgw_dsm_handle *fd;
	dsm_handle handle;

	rel = FUNC9(FUNC2(), RowExclusiveLock);
	scan = FUNC3(rel, SnapshotSelf, 0, NULL);
	tuple = FUNC8(scan, ForwardScanDirection);
	FUNC0(tuple != NULL);
	tuple = FUNC5(tuple);
	fd = (FormData_bgw_dsm_handle *) FUNC1(tuple);
	handle = fd->handle;
	FUNC7(tuple);
	FUNC6(scan);
	FUNC4(rel, RowExclusiveLock);

	return handle;
}