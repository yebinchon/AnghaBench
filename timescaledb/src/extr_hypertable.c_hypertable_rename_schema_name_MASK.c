#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_6__* tuple; int /*<<< orphan*/  scanrel; int /*<<< orphan*/  desc; } ;
typedef  TYPE_1__ TupleInfo ;
struct TYPE_9__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_8__ {int /*<<< orphan*/  chunk_sizing_func_schema; int /*<<< orphan*/  associated_schema_name; int /*<<< orphan*/  schema_name; } ;
typedef  int /*<<< orphan*/  ScanTupleResult ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__ FormData_hypertable ;

/* Variables and functions */
 int /*<<< orphan*/  SCAN_CONTINUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ScanTupleResult
FUNC6(TupleInfo *ti, void *data)
{
	const char **schema_names = (const char **) data;
	const char *old_schema_name = schema_names[0];
	const char *new_schema_name = schema_names[1];
	bool updated = false;
	FormData_hypertable fd;

	FUNC1(&fd, ti->tuple, ti->desc);

	/*
	 * Because we are doing a heap scan with no scankey, we don't know which
	 * schema name to change, if any
	 */
	if (FUNC3(&fd.schema_name, old_schema_name) == 0)
	{
		FUNC4(&fd.schema_name, new_schema_name);
		updated = true;
	}
	if (FUNC3(&fd.associated_schema_name, old_schema_name) == 0)
	{
		FUNC4(&fd.associated_schema_name, new_schema_name);
		updated = true;
	}
	if (FUNC3(&fd.chunk_sizing_func_schema, old_schema_name) == 0)
	{
		FUNC4(&fd.chunk_sizing_func_schema, new_schema_name);
		updated = true;
	}

	/* Only update the catalog if we explicitly something */
	if (updated)
	{
		HeapTuple new_tuple = FUNC2(&fd, ti->desc);
		FUNC5(ti->scanrel, &ti->tuple->t_self, new_tuple);
		FUNC0(new_tuple);
	}

	/* Keep going so we can change the name for all hypertables */
	return SCAN_CONTINUE;
}