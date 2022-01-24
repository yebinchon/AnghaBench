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
struct snlua {scalar_t__ mem; int /*<<< orphan*/  ctx; int /*<<< orphan*/  L; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,float) ; 
 int /*<<< orphan*/  skynet_sig_L ; 

void
FUNC1(struct snlua *l, int signal) {
	FUNC0(l->ctx, "recv a signal %d", signal);
	if (signal == 0) {
#ifdef lua_checksig
	// If our lua support signal (modified lua version by skynet), trigger it.
	skynet_sig_L = l->L;
#endif
	} else if (signal == 1) {
		FUNC0(l->ctx, "Current Memory %.3fK", (float)l->mem / 1024);
	}
}