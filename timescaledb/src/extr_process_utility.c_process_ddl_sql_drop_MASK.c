#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int type; } ;
typedef  int /*<<< orphan*/  EventTriggerDropView ;
typedef  TYPE_1__ EventTriggerDropObject ;

/* Variables and functions */
#define  EVENT_TRIGGER_DROP_INDEX 133 
#define  EVENT_TRIGGER_DROP_SCHEMA 132 
#define  EVENT_TRIGGER_DROP_TABLE 131 
#define  EVENT_TRIGGER_DROP_TABLE_CONSTRAINT 130 
#define  EVENT_TRIGGER_DROP_TRIGGER 129 
#define  EVENT_TRIGGER_DROP_VIEW 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(EventTriggerDropObject *obj)
{
	switch (obj->type)
	{
		case EVENT_TRIGGER_DROP_TABLE_CONSTRAINT:
			FUNC3(obj);
			break;
		case EVENT_TRIGGER_DROP_INDEX:
			FUNC0(obj);
			break;
		case EVENT_TRIGGER_DROP_TABLE:
			FUNC2(obj);
			break;
		case EVENT_TRIGGER_DROP_SCHEMA:
			FUNC1(obj);
			break;
		case EVENT_TRIGGER_DROP_TRIGGER:
			FUNC4(obj);
			break;
		case EVENT_TRIGGER_DROP_VIEW:
			FUNC5((EventTriggerDropView *) obj);
			break;
	}
}