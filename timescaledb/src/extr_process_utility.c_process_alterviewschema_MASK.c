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
struct TYPE_5__ {scalar_t__ objectType; int /*<<< orphan*/  newschema; int /*<<< orphan*/ * relation; } ;
struct TYPE_4__ {scalar_t__ parsetree; } ;
typedef  TYPE_1__ ProcessUtilityArgs ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_2__ AlterObjectSchemaStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  NoLock ; 
 scalar_t__ OBJECT_VIEW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC7(ProcessUtilityArgs *args)
{
	AlterObjectSchemaStmt *alterstmt = (AlterObjectSchemaStmt *) args->parsetree;
	Oid relid;
	char *schema;
	char *name;

	FUNC0(alterstmt->objectType == OBJECT_VIEW);

	if (NULL == alterstmt->relation)
		return;

	relid = FUNC2(alterstmt->relation, NoLock, true);
	if (!FUNC1(relid))
		return;

	schema = FUNC3(FUNC5(relid));
	name = FUNC4(relid);

	FUNC6(schema, name, alterstmt->newschema, name);
}