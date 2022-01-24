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
struct TYPE_4__ {int /*<<< orphan*/  workspaces; } ;
struct TYPE_3__ {int destroying; scalar_t__ ntxnrefs; } ;
struct sway_output {TYPE_2__ current; int /*<<< orphan*/  workspaces; TYPE_1__ node; int /*<<< orphan*/ * wlr_output; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sway_output*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 

void FUNC3(struct sway_output *output) {
	if (!FUNC2(output->node.destroying,
				"Tried to free output which wasn't marked as destroying")) {
		return;
	}
	if (!FUNC2(output->wlr_output == NULL,
				"Tried to free output which still had a wlr_output")) {
		return;
	}
	if (!FUNC2(output->node.ntxnrefs == 0, "Tried to free output "
				"which is still referenced by transactions")) {
		return;
	}
	FUNC1(output->workspaces);
	FUNC1(output->current.workspaces);
	FUNC0(output);
}