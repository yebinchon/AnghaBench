#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct watch_handler {int triggers; int (* check ) (struct watch_handler*,int,int) ;int /*<<< orphan*/  last_modified; } ;
typedef  enum watch_trigger { ____Placeholder_watch_trigger } watch_trigger ;
typedef  enum watch_event { ____Placeholder_watch_event } watch_event ;
struct TYPE_2__ {scalar_t__* git_dir; } ;

/* Variables and functions */
 int FUNC0 (struct watch_handler*) ; 
 int WATCH_EVENT_AFTER_COMMAND ; 
 int WATCH_NONE ; 
 TYPE_1__ repo ; 
 int FUNC1 (struct watch_handler*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 struct watch_handler* watch_handlers ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static enum watch_trigger
FUNC5(enum watch_event event, enum watch_trigger trigger,
		   enum watch_trigger changed)
{
	time_t timestamp = 0;
	int i;

	if (FUNC4(event))
		return WATCH_NONE;

	if (event == WATCH_EVENT_AFTER_COMMAND)
		timestamp = FUNC2(NULL);

	for (i = 0; i < FUNC0(watch_handlers); i++) {
		struct watch_handler *handler = &watch_handlers[i];

		if (event == WATCH_EVENT_AFTER_COMMAND) {
			changed = handler->triggers;
			handler->last_modified = timestamp;
			continue;
		}

		if (*repo.git_dir &&
		    (trigger & handler->triggers) &&
		    (changed | handler->triggers) != changed)
			changed |= handler->check(handler, event, trigger);
	}

	if (changed)
		FUNC3(NULL, event, changed);

	return changed;
}