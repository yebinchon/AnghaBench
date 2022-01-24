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
struct zed_conf {int state_fd; int pid_fd; int /*<<< orphan*/ * zedlets; struct zed_conf* state_file; struct zed_conf* zedlet_dir; struct zed_conf* pid_file; struct zed_conf* conf_file; } ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (struct zed_conf*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (struct zed_conf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct zed_conf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(struct zed_conf *zcp)
{
	if (!zcp)
		return;

	if (zcp->state_fd >= 0) {
		if (FUNC0(zcp->state_fd) < 0)
			FUNC4(LOG_WARNING,
			    "Failed to close state file \"%s\": %s",
			    zcp->state_file, FUNC2(errno));
		zcp->state_fd = -1;
	}
	if (zcp->pid_file) {
		if ((FUNC3(zcp->pid_file) < 0) && (errno != ENOENT))
			FUNC4(LOG_WARNING,
			    "Failed to remove PID file \"%s\": %s",
			    zcp->pid_file, FUNC2(errno));
	}
	if (zcp->pid_fd >= 0) {
		if (FUNC0(zcp->pid_fd) < 0)
			FUNC4(LOG_WARNING,
			    "Failed to close PID file \"%s\": %s",
			    zcp->pid_file, FUNC2(errno));
		zcp->pid_fd = -1;
	}
	if (zcp->conf_file) {
		FUNC1(zcp->conf_file);
		zcp->conf_file = NULL;
	}
	if (zcp->pid_file) {
		FUNC1(zcp->pid_file);
		zcp->pid_file = NULL;
	}
	if (zcp->zedlet_dir) {
		FUNC1(zcp->zedlet_dir);
		zcp->zedlet_dir = NULL;
	}
	if (zcp->state_file) {
		FUNC1(zcp->state_file);
		zcp->state_file = NULL;
	}
	if (zcp->zedlets) {
		FUNC5(zcp->zedlets);
		zcp->zedlets = NULL;
	}
	FUNC1(zcp);
}