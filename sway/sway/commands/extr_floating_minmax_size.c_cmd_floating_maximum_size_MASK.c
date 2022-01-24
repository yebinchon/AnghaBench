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
struct TYPE_2__ {int /*<<< orphan*/  floating_maximum_height; int /*<<< orphan*/  floating_maximum_width; } ;

/* Variables and functions */
 TYPE_1__* config ; 
 struct cmd_results* FUNC0 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  max_usage ; 

struct cmd_results *FUNC1(int argc, char **argv) {
	return FUNC0(argc, argv, "floating_maximum_size", max_usage,
			&config->floating_maximum_width, &config->floating_maximum_height);
}