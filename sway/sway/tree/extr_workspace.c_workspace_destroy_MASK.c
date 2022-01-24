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
struct TYPE_3__ {int /*<<< orphan*/  tiling; int /*<<< orphan*/  floating; } ;
struct TYPE_4__ {int destroying; scalar_t__ ntxnrefs; } ;
struct sway_workspace {TYPE_1__ current; int /*<<< orphan*/  tiling; int /*<<< orphan*/  floating; int /*<<< orphan*/  output_priority; struct sway_workspace* representation; struct sway_workspace* name; TYPE_2__ node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sway_workspace*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 

void FUNC4(struct sway_workspace *workspace) {
	if (!FUNC3(workspace->node.destroying,
				"Tried to free workspace which wasn't marked as destroying")) {
		return;
	}
	if (!FUNC3(workspace->node.ntxnrefs == 0, "Tried to free workspace "
				"which is still referenced by transactions")) {
		return;
	}

	FUNC0(workspace->name);
	FUNC0(workspace->representation);
	FUNC2(workspace->output_priority);
	FUNC1(workspace->floating);
	FUNC1(workspace->tiling);
	FUNC1(workspace->current.floating);
	FUNC1(workspace->current.tiling);
	FUNC0(workspace);
}