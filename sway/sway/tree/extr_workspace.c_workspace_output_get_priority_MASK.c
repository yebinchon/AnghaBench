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
struct sway_workspace {int /*<<< orphan*/  output_priority; } ;
struct sway_output {TYPE_1__* wlr_output; } ;
typedef  int /*<<< orphan*/  identifier ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  find_output ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,struct sway_output*) ; 

__attribute__((used)) static int FUNC2(struct sway_workspace *ws,
		struct sway_output *output) {
	char identifier[128];
	FUNC1(identifier, sizeof(identifier), output);
	int index_id = FUNC0(ws->output_priority, find_output, identifier);
	int index_name = FUNC0(ws->output_priority, find_output,
			output->wlr_output->name);
	return index_name < 0 || index_id < index_name ? index_id : index_name;
}