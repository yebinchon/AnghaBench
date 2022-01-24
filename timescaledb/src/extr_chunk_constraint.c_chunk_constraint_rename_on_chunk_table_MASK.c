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
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_6__ {int /*<<< orphan*/  table_name; int /*<<< orphan*/  schema_name; } ;
struct TYPE_8__ {TYPE_1__ fd; } ;
struct TYPE_7__ {char* subname; char* newname; int /*<<< orphan*/  relation; int /*<<< orphan*/  renameType; } ;
typedef  TYPE_2__ RenameStmt ;
typedef  TYPE_3__ Chunk ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OBJECT_TABCONSTRAINT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(int32 chunk_id, char *old_name, char *new_name)
{
	Chunk *chunk = FUNC3(chunk_id, 0, true);
	RenameStmt rename = {
		.renameType = OBJECT_TABCONSTRAINT,
		.relation = FUNC2(FUNC0(chunk->fd.schema_name), FUNC0(chunk->fd.table_name), 0),
		.subname = old_name,
		.newname = new_name,
	};

	FUNC1(&rename);
}