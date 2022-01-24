#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  desc; int /*<<< orphan*/  tuple; } ;
typedef  TYPE_1__ TupleInfo ;
struct TYPE_6__ {int /*<<< orphan*/  table_name; int /*<<< orphan*/  schema_name; } ;
typedef  int /*<<< orphan*/  ScanTupleResult ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_2__ FormData_hypertable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCAN_DONE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ScanTupleResult
FUNC5(TupleInfo *ti, void *data)
{
	Oid *relid = data;
	FormData_hypertable fd;
	Oid schema_oid;

	FUNC4(&fd, ti->tuple, ti->desc);

	schema_oid = FUNC2(FUNC0(fd.schema_name), true);

	if (FUNC1(schema_oid))
		*relid = FUNC3(FUNC0(fd.table_name), schema_oid);

	return SCAN_DONE;
}