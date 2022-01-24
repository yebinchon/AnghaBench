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
struct TYPE_7__ {int /*<<< orphan*/  tgoid; int /*<<< orphan*/  tgoldtable; int /*<<< orphan*/  tgnewtable; } ;
typedef  TYPE_2__ Trigger ;
struct TYPE_6__ {int /*<<< orphan*/  table_name; int /*<<< orphan*/  schema_name; } ;
struct TYPE_8__ {TYPE_1__ fd; } ;
typedef  TYPE_3__ Chunk ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC7(Trigger *trigger, void *arg)
{
	Chunk *chunk = arg;

#if PG10_GE
	if (TRIGGER_USES_TRANSITION_TABLE(trigger->tgnewtable) ||
		TRIGGER_USES_TRANSITION_TABLE(trigger->tgoldtable))
		ereport(ERROR,
				(errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
				 errmsg("hypertables do not support transition tables in triggers")));
#endif
	if (FUNC5(trigger))
		FUNC6(trigger->tgoid,
								   FUNC0(chunk->fd.schema_name),
								   FUNC0(chunk->fd.table_name));

	return true;
}