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
struct bar_binding {struct bar_binding* command; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bar_binding*) ; 

void FUNC1(struct bar_binding *binding) {
	if (!binding) {
		return;
	}
	FUNC0(binding->command);
	FUNC0(binding);
}