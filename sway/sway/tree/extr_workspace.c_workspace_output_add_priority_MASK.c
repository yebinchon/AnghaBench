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
struct sway_workspace {int /*<<< orphan*/  output_priority; } ;
struct sway_output {int dummy; } ;
typedef  int /*<<< orphan*/  identifier ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,struct sway_output*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (struct sway_workspace*,struct sway_output*) ; 

void FUNC4(struct sway_workspace *workspace,
		struct sway_output *output) {
	if (FUNC3(workspace, output) < 0) {
		char identifier[128];
		FUNC1(identifier, sizeof(identifier), output);
		FUNC0(workspace->output_priority, FUNC2(identifier));
	}
}