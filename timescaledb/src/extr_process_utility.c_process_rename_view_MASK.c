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
struct TYPE_3__ {int /*<<< orphan*/  newname; } ;
typedef  TYPE_1__ RenameStmt ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(Oid relid, RenameStmt *stmt)
{
	char *schema = FUNC0(FUNC2(relid));
	char *name = FUNC1(relid);
	FUNC3(schema, name, schema, stmt->newname);
}