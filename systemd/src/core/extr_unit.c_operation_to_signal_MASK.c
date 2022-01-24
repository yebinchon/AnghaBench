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
struct TYPE_5__ {int kill_signal; int final_kill_signal; int watchdog_signal; } ;
typedef  int KillOperation ;
typedef  TYPE_1__ KillContext ;

/* Variables and functions */
#define  KILL_KILL 132 
#define  KILL_RESTART 131 
#define  KILL_TERMINATE 130 
#define  KILL_TERMINATE_AND_LOG 129 
#define  KILL_WATCHDOG 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (TYPE_1__ const*) ; 

__attribute__((used)) static int FUNC3(const KillContext *c, KillOperation k, bool *noteworthy) {
        FUNC0(c);

        switch (k) {

        case KILL_TERMINATE:
        case KILL_TERMINATE_AND_LOG:
                *noteworthy = false;
                return c->kill_signal;

        case KILL_RESTART:
                *noteworthy = false;
                return FUNC2(c);

        case KILL_KILL:
                *noteworthy = true;
                return c->final_kill_signal;

        case KILL_WATCHDOG:
                *noteworthy = true;
                return c->watchdog_signal;

        default:
                FUNC1("KillOperation unknown");
        }
}