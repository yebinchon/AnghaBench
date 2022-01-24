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
struct sway_workspace {int /*<<< orphan*/  node; struct sway_output* output; } ;
struct sway_output {int /*<<< orphan*/  node; int /*<<< orphan*/  workspaces; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sway_workspace*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_workspace*) ; 

void FUNC3(struct sway_output *output,
		struct sway_workspace *workspace) {
	if (workspace->output) {
		FUNC2(workspace);
	}
	FUNC0(output->workspaces, workspace);
	workspace->output = output;
	FUNC1(&output->node);
	FUNC1(&workspace->node);
}