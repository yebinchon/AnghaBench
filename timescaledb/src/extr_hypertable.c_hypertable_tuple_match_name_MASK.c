#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  desc; int /*<<< orphan*/  tuple; } ;
typedef  TYPE_1__ TupleInfo ;
struct TYPE_8__ {int /*<<< orphan*/  ht_oids; int /*<<< orphan*/ * table_name; int /*<<< orphan*/ * schema_name; } ;
struct TYPE_7__ {int /*<<< orphan*/  table_name; int /*<<< orphan*/  schema_name; } ;
typedef  int /*<<< orphan*/  ScanTupleResult ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_2__ FormData_hypertable ;
typedef  TYPE_3__ AccumHypertable ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCAN_CONTINUE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nameeq ; 

__attribute__((used)) static ScanTupleResult
FUNC9(TupleInfo *ti, void *data)
{
	Oid relid;
	FormData_hypertable fd;
	AccumHypertable *accum = data;
	Oid schema_oid;

	FUNC7(&fd, ti->tuple, ti->desc);
	schema_oid = FUNC5(FUNC3(fd.schema_name), true);

	if (!FUNC4(schema_oid))
		return SCAN_CONTINUE;

	relid = FUNC6(FUNC3(fd.table_name), schema_oid);
	if (!FUNC4(relid))
		return SCAN_CONTINUE;

	if ((accum->schema_name == NULL ||
		 FUNC0(FUNC1(nameeq,
										  FUNC2(accum->schema_name),
										  FUNC2(&fd.schema_name)))) &&
		(accum->table_name == NULL ||
		 FUNC0(FUNC1(nameeq,
										  FUNC2(accum->table_name),
										  FUNC2(&fd.table_name)))))
		accum->ht_oids = FUNC8(accum->ht_oids, relid);

	return SCAN_CONTINUE;
}