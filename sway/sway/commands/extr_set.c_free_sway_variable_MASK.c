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
struct sway_variable {struct sway_variable* value; struct sway_variable* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sway_variable*) ; 

void FUNC1(struct sway_variable *var) {
	if (!var) {
		return;
	}
	FUNC0(var->name);
	FUNC0(var->value);
	FUNC0(var);
}