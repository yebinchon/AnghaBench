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
 int FD_CLOEXEC ; 
 int /*<<< orphan*/  F_GETFD ; 
 int /*<<< orphan*/  F_SETFD ; 
 int /*<<< orphan*/  SWAY_ERROR ; 
 int FUNC0 (int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

bool FUNC2(int fd, bool cloexec) {
	int flags = FUNC0(fd, F_GETFD);
	if (flags == -1) {
		FUNC1(SWAY_ERROR, "fcntl failed");
		return false;
	}
	if (cloexec) {
		flags = flags | FD_CLOEXEC;
	} else {
		flags = flags & ~FD_CLOEXEC;
	}
	if (FUNC0(fd, F_SETFD, flags) == -1) {
		FUNC1(SWAY_ERROR, "fcntl failed");
		return false;
	}
	return true;
}