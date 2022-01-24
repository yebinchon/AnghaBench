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
struct TYPE_5__ {scalar_t__ type; } ;
struct TYPE_4__ {int /*<<< orphan*/  schema; } ;
typedef  TYPE_1__ EventTriggerDropSchema ;
typedef  TYPE_2__ EventTriggerDropObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ EVENT_TRIGGER_DROP_SCHEMA ; 
 int /*<<< orphan*/  EXTENSION_NAME ; 
 int /*<<< orphan*/  INTERNAL_SCHEMA_NAME ; 
 int /*<<< orphan*/  NOTICE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(EventTriggerDropObject *obj)
{
	EventTriggerDropSchema *schema;
	int count;

	FUNC0(obj->type == EVENT_TRIGGER_DROP_SCHEMA);
	schema = (EventTriggerDropSchema *) obj;

	if (FUNC5(schema->schema, INTERNAL_SCHEMA_NAME) == 0)
		FUNC1(ERROR,
				(FUNC2(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC4("cannot drop the internal schema for extension \"%s\"", EXTENSION_NAME),
				 FUNC3("Use DROP EXTENSION to remove the extension and the schema.")));

	/*
	 * Check for any remaining hypertables that use the schema as its
	 * associated schema. For matches, we reset their associated schema to the
	 * INTERNAL schema
	 */
	count = FUNC6(schema->schema);

	if (count > 0)
		FUNC1(NOTICE,
				(FUNC4("the chunk storage schema changed to \"%s\" for %d hypertable%c",
						INTERNAL_SCHEMA_NAME,
						count,
						(count > 1) ? 's' : '\0')));
}