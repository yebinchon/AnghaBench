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
struct sway_binding {struct sway_binding* command; struct sway_binding* input; int /*<<< orphan*/  syms; int /*<<< orphan*/  keys; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sway_binding*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct sway_binding *binding) {
	if (!binding) {
		return;
	}

	FUNC1(binding->keys);
	FUNC1(binding->syms);
	FUNC0(binding->input);
	FUNC0(binding->command);
	FUNC0(binding);
}