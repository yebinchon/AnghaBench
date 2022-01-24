#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  end; int /*<<< orphan*/  start; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ TimeRange ;
struct TYPE_10__ {int /*<<< orphan*/ * name; int /*<<< orphan*/ * schema; } ;
struct TYPE_9__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__* StringInfo ;
typedef  TYPE_3__ SchemaAndName ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/ * Name ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 TYPE_2__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void
FUNC9(SchemaAndName materialization_table, Name time_column_name,
							TimeRange invalidation_range)
{
	int res;
	StringInfo command = FUNC6();
	Oid out_fn;
	bool type_is_varlena;
	char *invalidation_start;
	char *invalidation_end;

	FUNC5(invalidation_range.type, &out_fn, &type_is_varlena);

	invalidation_start = FUNC1(out_fn, invalidation_range.start);
	invalidation_end = FUNC1(out_fn, invalidation_range.end);

	FUNC3(command,
					 "DELETE FROM %s.%s AS D WHERE "
					 "D.%s >= %s AND D.%s < %s;",
					 FUNC7(FUNC0(*materialization_table.schema)),
					 FUNC7(FUNC0(*materialization_table.name)),
					 FUNC7(FUNC0(*time_column_name)),
					 FUNC8(invalidation_start),
					 FUNC7(FUNC0(*time_column_name)),
					 FUNC8(invalidation_end));

	res = FUNC2(command->data,
								0 /*=nargs*/,
								NULL,
								NULL,
								NULL /*=Nulls*/,
								false /*=read_only*/,
								0 /*count*/);
	if (res < 0)
		FUNC4(ERROR, "could not delete old values from materialization table");
}