#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  tuple; } ;
typedef  TYPE_1__ TupleInfo ;
struct TYPE_8__ {int /*<<< orphan*/  num_filtered; int /*<<< orphan*/  userid; int /*<<< orphan*/  hcache; } ;
typedef  TYPE_2__ TablespaceScanInfo ;
struct TYPE_10__ {int /*<<< orphan*/  hypertable_id; } ;
struct TYPE_9__ {int /*<<< orphan*/  main_table_relid; } ;
typedef  int /*<<< orphan*/  ScanFilterResult ;
typedef  TYPE_3__ Hypertable ;
typedef  TYPE_4__ FormData_tablespace ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCAN_EXCLUDE ; 
 int /*<<< orphan*/  SCAN_INCLUDE ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ScanFilterResult
FUNC4(TupleInfo *ti, void *data)
{
	TablespaceScanInfo *info = data;
	FormData_tablespace *form = (FormData_tablespace *) FUNC1(ti->tuple);
	Hypertable *ht;

	ht = FUNC2(info->hcache, form->hypertable_id);

	FUNC0(NULL != ht);

	if (FUNC3(ht->main_table_relid, info->userid))
		return SCAN_INCLUDE;

	info->num_filtered++;

	return SCAN_EXCLUDE;
}