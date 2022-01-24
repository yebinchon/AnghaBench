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
struct TYPE_3__ {char* name; int missing_ok; int /*<<< orphan*/  subtype; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ AlterTableCmd ;

/* Variables and functions */
 int /*<<< orphan*/  AT_SetNotNull ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  NOTICE ; 
 int /*<<< orphan*/  T_AlterTableCmd ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC5(Oid table_relid, char *colname)
{
	AlterTableCmd cmd = {
		.type = T_AlterTableCmd,
		.subtype = AT_SetNotNull,
		.name = colname,
		.missing_ok = false,
	};

	FUNC1(NOTICE,
			(FUNC3("adding not-null constraint to column \"%s\"", colname),
			 FUNC2("Time dimensions cannot have NULL values")));

	FUNC0(table_relid, FUNC4(&cmd), false);
}