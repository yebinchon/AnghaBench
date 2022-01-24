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
struct cmd_results {int dummy; } ;
struct TYPE_2__ {scalar_t__ reading; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_INFO ; 
 struct cmd_results* FUNC0 (int,char**) ; 
 TYPE_1__* config ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

struct cmd_results *FUNC3(int argc, char **argv) {
	FUNC2(SWAY_INFO, "Warning: new_float is deprecated. "
		"Use default_floating_border instead.");
	if (config->reading) {
		FUNC1("new_float is deprecated. "
			"Use default_floating_border instead.");
	}
	return FUNC0(argc, argv);
}