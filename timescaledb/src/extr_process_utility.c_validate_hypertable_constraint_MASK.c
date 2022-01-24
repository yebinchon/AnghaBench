#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  subtype; int /*<<< orphan*/ * name; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Hypertable ;
typedef  TYPE_1__ AlterTableCmd ;

/* Variables and functions */
 int /*<<< orphan*/  AT_ValidateConstraint ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(Hypertable *ht, Oid chunk_relid, void *arg)
{
	AlterTableCmd *cmd = (AlterTableCmd *) arg;
	AlterTableCmd *chunk_cmd = FUNC1(cmd);

	chunk_cmd->name =
		FUNC3(chunk_relid, cmd->name);

	if (chunk_cmd->name == NULL)
		return;

	/* do not pass down the VALIDATE RECURSE subtype */
	chunk_cmd->subtype = AT_ValidateConstraint;
	FUNC0(chunk_relid, FUNC2(chunk_cmd), false);
}