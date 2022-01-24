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
struct sigaction {int sa_flags; int /*<<< orphan*/  sa_sigaction; int /*<<< orphan*/  sa_mask; } ;

/* Variables and functions */
 int SA_NODEFER ; 
 int SA_RESETHAND ; 
 int SA_SIGINFO ; 
 int /*<<< orphan*/  SIGBUS ; 
 int /*<<< orphan*/  SIGFPE ; 
 int /*<<< orphan*/  SIGILL ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  rdbCheckHandleCrash ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(void) {
    struct sigaction act;

    FUNC1(&act.sa_mask);
    act.sa_flags = SA_NODEFER | SA_RESETHAND | SA_SIGINFO;
    act.sa_sigaction = rdbCheckHandleCrash;
    FUNC0(SIGSEGV, &act, NULL);
    FUNC0(SIGBUS, &act, NULL);
    FUNC0(SIGFPE, &act, NULL);
    FUNC0(SIGILL, &act, NULL);
}