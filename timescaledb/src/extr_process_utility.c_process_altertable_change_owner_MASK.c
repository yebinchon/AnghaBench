#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  newowner; } ;
struct TYPE_11__ {int /*<<< orphan*/  compressed_hypertable_id; } ;
struct TYPE_12__ {int /*<<< orphan*/  main_table_relid; TYPE_1__ fd; } ;
typedef  TYPE_2__ Hypertable ;
typedef  TYPE_3__ AlterTableCmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RoleSpec ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  process_altertable_change_owner_chunk ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(Hypertable *ht, AlterTableCmd *cmd)
{
	FUNC1(FUNC2(cmd->newowner, RoleSpec));

	FUNC4(ht, process_altertable_change_owner_chunk, cmd);

	if (FUNC3(ht))
	{
		Hypertable *compressed_hypertable =
			FUNC6(ht->fd.compressed_hypertable_id);
		FUNC0(compressed_hypertable->main_table_relid, FUNC5(cmd), false);
		FUNC7(compressed_hypertable, cmd);
	}
}