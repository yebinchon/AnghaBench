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
struct TYPE_6__ {int row; int /*<<< orphan*/  events; int /*<<< orphan*/  args; int /*<<< orphan*/  funcname; int /*<<< orphan*/  relation; int /*<<< orphan*/  trigname; int /*<<< orphan*/  timing; int /*<<< orphan*/  type; } ;
struct TYPE_5__ {int /*<<< orphan*/  objectId; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ ObjectAddress ;
typedef  TYPE_2__ CreateTrigStmt ;

/* Variables and functions */
 int /*<<< orphan*/  CHUNK_DML_BLOCKER_NAME ; 
 int /*<<< orphan*/  CHUNK_DML_BLOCKER_TRIGGER ; 
 TYPE_1__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  INTERNAL_SCHEMA_NAME ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRIGGER_TYPE_BEFORE ; 
 int /*<<< orphan*/  TRIGGER_TYPE_INSERT ; 
 int /*<<< orphan*/  T_CreateTrigStmt ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(Oid relid)
{
	ObjectAddress objaddr;
	char *relname = FUNC4(relid);
	Oid schemaid = FUNC5(relid);
	char *schema = FUNC3(schemaid);

	/* stmt triggers are blocked on hypertable chunks */
	CreateTrigStmt stmt = {
		.type = T_CreateTrigStmt,
		.row = true,
		.timing = TRIGGER_TYPE_BEFORE,
		.trigname = CHUNK_DML_BLOCKER_NAME,
		.relation = FUNC7(schema, relname, -1),
		.funcname =
			FUNC6(FUNC8(INTERNAL_SCHEMA_NAME), FUNC8(CHUNK_DML_BLOCKER_TRIGGER)),
		.args = NIL,
		.events = TRIGGER_TYPE_INSERT,
	};
	objaddr = FUNC0(&stmt, NULL, relid, InvalidOid, InvalidOid, InvalidOid, false);

	if (!FUNC1(objaddr.objectId))
		FUNC2(ERROR, "could not create dml blocker trigger");

	return;
}