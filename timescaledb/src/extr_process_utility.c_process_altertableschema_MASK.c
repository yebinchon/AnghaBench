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
struct TYPE_6__ {scalar_t__ objectType; int /*<<< orphan*/  newschema; int /*<<< orphan*/ * relation; } ;
struct TYPE_5__ {scalar_t__ parsetree; } ;
typedef  TYPE_1__ ProcessUtilityArgs ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Hypertable ;
typedef  int /*<<< orphan*/  Chunk ;
typedef  int /*<<< orphan*/  Cache ;
typedef  TYPE_2__ AlterObjectSchemaStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  NoLock ; 
 scalar_t__ OBJECT_TABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(ProcessUtilityArgs *args)
{
	AlterObjectSchemaStmt *alterstmt = (AlterObjectSchemaStmt *) args->parsetree;
	Oid relid;
	Cache *hcache;
	Hypertable *ht;

	FUNC0(alterstmt->objectType == OBJECT_TABLE);

	if (NULL == alterstmt->relation)
		return;

	relid = FUNC2(alterstmt->relation, NoLock, true);

	if (!FUNC1(relid))
		return;

	hcache = FUNC8();
	ht = FUNC7(hcache, relid);

	if (ht == NULL)
	{
		Chunk *chunk = FUNC5(relid, 0, false);

		if (NULL != chunk)
			FUNC6(chunk, alterstmt->newschema);
	}
	else
	{
		FUNC9(ht, alterstmt->newschema);

		FUNC3(args, ht);
	}

	FUNC4(hcache);
}