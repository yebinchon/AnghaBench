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
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  threadfunc ; 

int FUNC4(int ac, char **av)
{
	DWORD id;
	HANDLE Thread;

	Thread = FUNC0(0, 0, threadfunc, 0, 0, &id);
	FUNC3("Main: ThreadId for new thread is %08lx\n", id);
	FUNC3("Main: Waiting on thread...\n");
	FUNC2(Thread, INFINITE);
	FUNC3("Main: OK, somebody fixed the PsUnblockThread spinlock double-acquire crash\n");
	FUNC1(Thread);
	FUNC3("Main: Terminating...\n");
	return 0;
}