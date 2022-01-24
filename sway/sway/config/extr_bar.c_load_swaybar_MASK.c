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
struct bar_config {int /*<<< orphan*/  id; int /*<<< orphan*/ * client; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct bar_config*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct bar_config *bar) {
	if (bar->client != NULL) {
		FUNC2(bar->client);
	}
	FUNC1(SWAY_DEBUG, "Invoking swaybar for bar id '%s'", bar->id);
	FUNC0(bar);
}