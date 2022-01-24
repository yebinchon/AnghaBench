#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  tuple; int /*<<< orphan*/  scanrel; } ;
typedef  TYPE_1__ TupleInfo ;
typedef  int /*<<< orphan*/  ScanTupleResult ;
typedef  int /*<<< orphan*/  CatalogSecurityContext ;

/* Variables and functions */
 int /*<<< orphan*/  SCAN_CONTINUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

ScanTupleResult
FUNC4(TupleInfo *ti, void *const data)
{
	CatalogSecurityContext sec_ctx;

	FUNC0(FUNC1(), &sec_ctx);
	FUNC2(ti->scanrel, ti->tuple);
	FUNC3(&sec_ctx);

	return SCAN_CONTINUE;
}