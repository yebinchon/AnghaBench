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
struct TYPE_6__ {int row; int events; int /*<<< orphan*/  args; int /*<<< orphan*/  funcname; int /*<<< orphan*/  relation; int /*<<< orphan*/  trigname; int /*<<< orphan*/  timing; int /*<<< orphan*/  type; } ;
struct TYPE_5__ {int /*<<< orphan*/  objectId; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ ObjectAddress ;
typedef  int /*<<< orphan*/  Hypertable ;
typedef  TYPE_2__ CreateTrigStmt ;
typedef  int /*<<< orphan*/  Cache ;

/* Variables and functions */
 int /*<<< orphan*/  CAGGINVAL_TRIGGER_NAME ; 
 char* CAGG_INVALIDATION_TRIGGER ; 
 int /*<<< orphan*/  ERRCODE_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 char* INTERNAL_SCHEMA_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRIGGER_TYPE_AFTER ; 
 int TRIGGER_TYPE_DELETE ; 
 int TRIGGER_TYPE_INSERT ; 
 int TRIGGER_TYPE_UPDATE ; 
 int /*<<< orphan*/  T_CreateTrigStmt ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 () ; 
 TYPE_1__ FUNC15 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC16(Oid relid, char *trigarg)
{
	ObjectAddress objaddr;
	char *relname = FUNC6(relid);
	Oid schemaid = FUNC7(relid);
	char *schema = FUNC5(schemaid);
	Cache *hcache;
	Hypertable *ht;

	CreateTrigStmt stmt = {
		.type = T_CreateTrigStmt,
		.row = true,
		.timing = TRIGGER_TYPE_AFTER,
		.trigname = CAGGINVAL_TRIGGER_NAME,
		.relation = FUNC10(schema, relname, -1),
		.funcname =
			FUNC9(FUNC11(INTERNAL_SCHEMA_NAME), FUNC11(CAGG_INVALIDATION_TRIGGER)),
		.args = FUNC8(FUNC11(trigarg)),
		.events = TRIGGER_TYPE_INSERT | TRIGGER_TYPE_UPDATE | TRIGGER_TYPE_DELETE,
	};
	if (FUNC1(relid, CAGGINVAL_TRIGGER_NAME))
		return;
	hcache = FUNC14();
	ht = FUNC13(hcache, relid);
	objaddr = FUNC15(ht, &stmt, NULL);
	if (!FUNC0(objaddr.objectId))
		FUNC2(ERROR,
				(FUNC3(ERRCODE_INTERNAL_ERROR),
				 FUNC4("could not create continuous aggregate trigger")));
	FUNC12(hcache);
}