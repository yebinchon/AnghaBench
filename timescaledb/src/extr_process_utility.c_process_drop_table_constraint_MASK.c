#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  id; } ;
struct TYPE_10__ {TYPE_1__ fd; } ;
struct TYPE_9__ {scalar_t__ type; } ;
struct TYPE_8__ {int /*<<< orphan*/  constraint_name; int /*<<< orphan*/  table; int /*<<< orphan*/  schema; } ;
typedef  int /*<<< orphan*/  Hypertable ;
typedef  TYPE_2__ EventTriggerDropTableConstraint ;
typedef  TYPE_3__ EventTriggerDropObject ;
typedef  TYPE_4__ Chunk ;
typedef  int /*<<< orphan*/  CatalogSecurityContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ EVENT_TRIGGER_DROP_TABLE_CONSTRAINT ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  process_drop_constraint_on_chunk ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(EventTriggerDropObject *obj)
{
	EventTriggerDropTableConstraint *constraint;
	Hypertable *ht;

	FUNC0(obj->type == EVENT_TRIGGER_DROP_TABLE_CONSTRAINT);
	constraint = (EventTriggerDropTableConstraint *) obj;

	/* do not use relids because underlying table could be gone */
	ht = FUNC7(constraint->schema, constraint->table);

	if (ht != NULL)
	{
		CatalogSecurityContext sec_ctx;

		FUNC3(FUNC4(), &sec_ctx);

		/* Recurse to each chunk and drop the corresponding constraint */
		FUNC2(ht, process_drop_constraint_on_chunk, constraint->constraint_name);

		FUNC5(&sec_ctx);
	}
	else
	{
		Chunk *chunk = FUNC1(constraint->schema, constraint->table, 0, false);

		if (NULL != chunk)
		{
			FUNC6(chunk->fd.id,
														  constraint->constraint_name,
														  true,
														  false);
		}
	}
}