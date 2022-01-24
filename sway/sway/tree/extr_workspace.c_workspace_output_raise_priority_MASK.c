#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sway_workspace {TYPE_1__* output_priority; } ;
struct sway_output {int dummy; } ;
typedef  int /*<<< orphan*/  identifier ;
struct TYPE_3__ {char** items; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,struct sway_output*) ; 
 char* FUNC3 (char*) ; 
 int FUNC4 (struct sway_workspace*,struct sway_output*) ; 

void FUNC5(struct sway_workspace *ws,
		struct sway_output *old_output, struct sway_output *output) {
	int old_index = FUNC4(ws, old_output);
	if (old_index < 0) {
		return;
	}

	int new_index = FUNC4(ws, output);
	if (new_index < 0) {
		char identifier[128];
		FUNC2(identifier, sizeof(identifier), output);
		FUNC1(ws->output_priority, old_index, FUNC3(identifier));
	} else if (new_index > old_index) {
		char *name = ws->output_priority->items[new_index];
		FUNC0(ws->output_priority, new_index);
		FUNC1(ws->output_priority, old_index, name);
	}
}