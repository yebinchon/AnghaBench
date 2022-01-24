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
struct sway_idle_inhibitor_v1 {scalar_t__ mode; } ;

/* Variables and functions */
 scalar_t__ INHIBIT_IDLE_APPLICATION ; 
 int /*<<< orphan*/  FUNC0 (struct sway_idle_inhibitor_v1*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 

void FUNC2(
		struct sway_idle_inhibitor_v1 *inhibitor) {
	if (!inhibitor) {
		return;
	}
	if (!FUNC1(inhibitor->mode != INHIBIT_IDLE_APPLICATION,
				"User should not be able to destroy application inhibitor")) {
		return;
	}
	FUNC0(inhibitor);
}