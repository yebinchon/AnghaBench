#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  link; } ;
struct sway_switch {TYPE_1__ switch_toggle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sway_switch*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct sway_switch *sway_switch) {
	if (!sway_switch) {
		return;
	}
	FUNC1(&sway_switch->switch_toggle.link);
	FUNC0(sway_switch);
}