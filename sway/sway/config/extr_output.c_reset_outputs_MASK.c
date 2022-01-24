#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct output_config {int dummy; } ;
struct TYPE_4__ {TYPE_1__* output_configs; } ;
struct TYPE_3__ {struct output_config** items; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct output_config*) ; 
 TYPE_2__* config ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  output_name_cmp ; 
 struct output_config* FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(void) {
	struct output_config *oc = NULL;
	int i = FUNC1(config->output_configs, output_name_cmp, "*");
	if (i >= 0) {
		oc = config->output_configs->items[i];
	} else {
		oc = FUNC3(FUNC2("*"));
	}
	FUNC0(oc);
}