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
struct TYPE_2__ {int /*<<< orphan*/  link; } ;
struct sway_root {int /*<<< orphan*/  output_layout; int /*<<< orphan*/  outputs; int /*<<< orphan*/  scratchpad; TYPE_1__ output_layout_change; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sway_root*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct sway_root *root) {
	FUNC2(&root->output_layout_change.link);
	FUNC1(root->scratchpad);
	FUNC1(root->outputs);
	FUNC3(root->output_layout);
	FUNC0(root);
}