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
struct sway_workspace {TYPE_2__* output_priority; } ;
struct sway_output {TYPE_1__* wlr_output; } ;
typedef  int /*<<< orphan*/  exclude_id ;
struct TYPE_4__ {int length; char** items; } ;
struct TYPE_3__ {char* name; } ;

/* Variables and functions */
 struct sway_output* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,struct sway_output*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

struct sway_output *FUNC3(
		struct sway_workspace *ws, struct sway_output *exclude) {
	char exclude_id[128] = {'\0'};
	if (exclude) {
		FUNC1(exclude_id, sizeof(exclude_id), exclude);
	}

	for (int i = 0; i < ws->output_priority->length; i++) {
		char *name = ws->output_priority->items[i];
		if (exclude && (FUNC2(name, exclude->wlr_output->name) == 0
					|| FUNC2(name, exclude_id) == 0)) {
			continue;
		}

		struct sway_output *output = FUNC0(name);
		if (output) {
			return output;
		}
	}

	return NULL;
}