#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  name; } ;
struct TYPE_9__ {int /*<<< orphan*/  column_name; } ;
struct TYPE_11__ {TYPE_2__ fd; } ;
struct TYPE_10__ {TYPE_1__* space; } ;
struct TYPE_8__ {int num_dimensions; TYPE_4__* dimensions; } ;
typedef  TYPE_3__ Hypertable ;
typedef  TYPE_4__ Dimension ;
typedef  TYPE_5__ AlterTableCmd ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_TABLE_DEFINITION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(Hypertable *ht, AlterTableCmd *cmd)
{
	int i;

	for (i = 0; i < ht->space->num_dimensions; i++)
	{
		Dimension *dim = &ht->space->dimensions[i];

		if (FUNC4(&dim->fd.column_name, cmd->name) == 0)
			FUNC0(ERROR,
					(FUNC1(ERRCODE_INVALID_TABLE_DEFINITION),
					 FUNC3("cannot drop column named in partition key"),
					 FUNC2("cannot drop column that is a hypertable partitioning (space or "
							   "time) dimension")));
	}
}