#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ count; int /*<<< orphan*/  tuple; int /*<<< orphan*/  scanrel; } ;
typedef  TYPE_1__ TupleInfo ;
struct TYPE_5__ {scalar_t__ stopcount; int /*<<< orphan*/  database_info; } ;
typedef  TYPE_2__ TablespaceScanInfo ;
typedef  int /*<<< orphan*/  ScanTupleResult ;
typedef  int /*<<< orphan*/  CatalogSecurityContext ;

/* Variables and functions */
 int /*<<< orphan*/  SCAN_CONTINUE ; 
 int /*<<< orphan*/  SCAN_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ScanTupleResult
FUNC3(TupleInfo *ti, void *data)
{
	TablespaceScanInfo *info = data;
	CatalogSecurityContext sec_ctx;

	FUNC0(info->database_info, &sec_ctx);
	FUNC1(ti->scanrel, ti->tuple);
	FUNC2(&sec_ctx);

	return (info->stopcount == 0 || ti->count < info->stopcount) ? SCAN_CONTINUE : SCAN_DONE;
}