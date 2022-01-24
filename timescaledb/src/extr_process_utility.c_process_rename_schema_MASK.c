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
struct TYPE_3__ {int /*<<< orphan*/  newname; int /*<<< orphan*/  subname; } ;
typedef  TYPE_1__ RenameStmt ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_TS_OPERATION_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  NAMEDATALEN ; 
 int NUM_TIMESCALEDB_SCHEMAS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * timescaledb_schema_names ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(RenameStmt *stmt)
{
	int i = 0;

	/* Block any renames of our internal schemas */
	for (i = 0; i < NUM_TIMESCALEDB_SCHEMAS; i++)
	{
		if (FUNC3(stmt->subname, timescaledb_schema_names[i], NAMEDATALEN) == 0)
		{
			FUNC0(ERROR,
					(FUNC1(ERRCODE_TS_OPERATION_NOT_SUPPORTED),
					 FUNC2("cannot rename schemas used by the TimescaleDB extension")));
			return;
		}
	}

	FUNC4(stmt->subname, stmt->newname);
	FUNC6(stmt->subname, stmt->newname);
	FUNC7(stmt->subname, stmt->newname);
	FUNC5(stmt->subname, stmt->newname);
}