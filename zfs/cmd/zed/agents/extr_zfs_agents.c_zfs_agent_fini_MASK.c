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
typedef  int /*<<< orphan*/  fmd_hdl_t ;
struct TYPE_5__ {int /*<<< orphan*/  ae_nvl; } ;
typedef  TYPE_1__ agent_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  agent_cond ; 
 int /*<<< orphan*/  agent_events ; 
 int agent_exiting ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  g_agents_tid ; 
 int /*<<< orphan*/ * g_zfs_hdl ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 () ; 

void
FUNC13(void)
{
	fmd_hdl_t *hdl;
	agent_event_t *event;

	agent_exiting = 1;
	(void) FUNC9(&agent_cond);

	/* wait for zfs_enum_pools thread to complete */
	(void) FUNC10(g_agents_tid, NULL);

	/* drain any pending events */
	while ((event = (FUNC6(&agent_events))) != NULL) {
		FUNC7(&agent_events, event);
		FUNC8(event->ae_nvl);
		FUNC4(event);
	}

	FUNC5(&agent_events);

	if ((hdl = FUNC3("zfs-retire")) != NULL) {
		FUNC1(hdl);
		FUNC2(hdl);
	}
	if ((hdl = FUNC3("zfs-diagnosis")) != NULL) {
		FUNC0(hdl);
		FUNC2(hdl);
	}

	FUNC11(LOG_INFO, "Add Agent: fini");
	FUNC12();

	g_zfs_hdl = NULL;
}