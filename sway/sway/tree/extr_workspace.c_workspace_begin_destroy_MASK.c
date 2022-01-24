#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  destroy; } ;
struct TYPE_5__ {int destroying; TYPE_1__ events; } ;
struct sway_workspace {TYPE_2__ node; scalar_t__ output; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sway_workspace*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct sway_workspace*) ; 

void FUNC5(struct sway_workspace *workspace) {
	FUNC2(SWAY_DEBUG, "Destroying workspace '%s'", workspace->name);
	FUNC0(NULL, workspace, "empty"); // intentional
	FUNC3(&workspace->node.events.destroy, &workspace->node);

	if (workspace->output) {
		FUNC4(workspace);
	}
	workspace->node.destroying = true;
	FUNC1(&workspace->node);
}