#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  SIGTERM ; 
 scalar_t__ agent_pid ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 

void FUNC2(void) {

        if (agent_pid <= 0)
                return;

        /* Inform agent that we are done */
        (void) FUNC0(agent_pid, SIGTERM);
        (void) FUNC1(agent_pid, NULL);
        agent_pid = 0;
}