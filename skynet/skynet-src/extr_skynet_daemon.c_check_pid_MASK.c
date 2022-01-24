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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ESRCH ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int*) ; 
 int FUNC3 () ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(const char *pidfile) {
	int pid = 0;
	FILE *f = FUNC1(pidfile,"r");
	if (f == NULL)
		return 0;
	int n = FUNC2(f,"%d", &pid);
	FUNC0(f);

	if (n !=1 || pid == 0 || pid == FUNC3()) {
		return 0;
	}

	if (FUNC4(pid, 0) && errno == ESRCH)
		return 0;

	return pid;
}