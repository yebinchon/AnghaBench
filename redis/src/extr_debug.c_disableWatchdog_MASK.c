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
struct sigaction {int /*<<< orphan*/  sa_handler; scalar_t__ sa_flags; int /*<<< orphan*/  sa_mask; } ;
struct TYPE_2__ {scalar_t__ watchdog_period; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIG_IGN ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(void) {
    struct sigaction act;
    if (server.watchdog_period == 0) return; /* Already disabled. */
    FUNC2(0); /* Stop the current timer. */

    /* Set the signal handler to SIG_IGN, this will also remove pending
     * signals from the queue. */
    FUNC1(&act.sa_mask);
    act.sa_flags = 0;
    act.sa_handler = SIG_IGN;
    FUNC0(SIGALRM, &act, NULL);
    server.watchdog_period = 0;
}