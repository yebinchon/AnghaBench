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
struct TYPE_5__ {int /*<<< orphan*/  ae_nvl; int /*<<< orphan*/  ae_subclass; int /*<<< orphan*/  ae_class; } ;
typedef  TYPE_1__ agent_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  agent_cond ; 
 int /*<<< orphan*/  agent_events ; 
 scalar_t__ agent_exiting ; 
 int /*<<< orphan*/  agent_lock ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *
FUNC10(void *arg)
{
	for (;;) {
		agent_event_t *event;

		(void) FUNC6(&agent_lock);

		/* wait for an event to show up */
		while (!agent_exiting && FUNC2(&agent_events))
			(void) FUNC5(&agent_cond, &agent_lock);

		if (agent_exiting) {
			(void) FUNC7(&agent_lock);
			FUNC8(LOG_INFO, "zfs_agent_consumer_thread: "
			    "exiting");
			return (NULL);
		}

		if ((event = (FUNC1(&agent_events))) != NULL) {
			FUNC3(&agent_events, event);

			(void) FUNC7(&agent_lock);

			/* dispatch to all event subscribers */
			FUNC9(event->ae_class, event->ae_subclass,
			    event->ae_nvl);

			FUNC4(event->ae_nvl);
			FUNC0(event);
			continue;
		}

		(void) FUNC7(&agent_lock);
	}

	return (NULL);
}