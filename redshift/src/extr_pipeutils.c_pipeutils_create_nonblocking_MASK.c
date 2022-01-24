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
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int*) ; 

int
FUNC4(int pipefds[2])
{
	int r = FUNC3(pipefds);
	if (r == -1) {
		FUNC2("pipe");
		return -1;
	}

	int flags = FUNC1(pipefds[0], F_GETFL);
	if (flags == -1) {
		FUNC2("fcntl");
		FUNC0(pipefds[0]);
		FUNC0(pipefds[1]);
		return -1;
	}

	r = FUNC1(pipefds[0], F_SETFL, flags | O_NONBLOCK);
	if (r == -1) {
		FUNC2("fcntl");
		FUNC0(pipefds[0]);
		FUNC0(pipefds[1]);
		return -1;
	}

	flags = FUNC1(pipefds[1], F_GETFL);
	if (flags == -1) {
		FUNC2("fcntl");
		FUNC0(pipefds[0]);
		FUNC0(pipefds[1]);
		return -1;
	}

	r = FUNC1(pipefds[1], F_SETFL, flags | O_NONBLOCK);
	if (r == -1) {
		FUNC2("fcntl");
		FUNC0(pipefds[0]);
		FUNC0(pipefds[1]);
		return -1;
	}

	return 0;
}