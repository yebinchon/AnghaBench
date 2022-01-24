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
struct sway_output_state {int /*<<< orphan*/  active_workspace; int /*<<< orphan*/  workspaces; } ;
struct sway_transaction_instruction {struct sway_output_state output_state; } ;
struct sway_output {int /*<<< orphan*/  workspaces; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_output*) ; 

__attribute__((used)) static void FUNC3(struct sway_output *output,
		struct sway_transaction_instruction *instruction) {
	struct sway_output_state *state = &instruction->output_state;
	state->workspaces = FUNC0();
	FUNC1(state->workspaces, output->workspaces);

	state->active_workspace = FUNC2(output);
}