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
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC2 (int,void*,int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC3 (scalar_t__) ; 

__attribute__((used)) static void
FUNC4(int pipefd, void *buffer, int sz) {
	for (;;) {
		int n = FUNC2(pipefd, buffer, sz);
		if (n<0) {
			if (errno == EINTR)
				continue;
			FUNC1(stderr, "socket-server : read pipe error %s.\n",FUNC3(errno));
			return;
		}
		// must atomic read from a pipe
		FUNC0(n == sz);
		return;
	}
}