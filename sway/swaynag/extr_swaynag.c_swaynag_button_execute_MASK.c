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
struct swaynag_button {scalar_t__ type; int /*<<< orphan*/  action; scalar_t__ terminal; int /*<<< orphan*/  text; } ;
struct TYPE_2__ {int visible; } ;
struct swaynag {int run_display; TYPE_1__ details; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 scalar_t__ SWAYNAG_ACTION_DISMISS ; 
 scalar_t__ SWAYNAG_ACTION_EXPAND ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct swaynag*) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct swaynag*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct swaynag *swaynag,
		struct swaynag_button *button) {
	FUNC6(SWAY_DEBUG, "Executing [%s]: %s", button->text, button->action);
	if (button->type == SWAYNAG_ACTION_DISMISS) {
		swaynag->run_display = false;
	} else if (button->type == SWAYNAG_ACTION_EXPAND) {
		swaynag->details.visible = !swaynag->details.visible;
		FUNC4(swaynag);
	} else {
		pid_t pid = FUNC2();
		if (pid < 0) {
			FUNC7(SWAY_DEBUG, "Failed to fork");
			return;
		} else if (pid == 0) {
			// Child process. Will be used to prevent zombie processes
			pid = FUNC2();
			if (pid < 0) {
				FUNC7(SWAY_DEBUG, "Failed to fork");
				return;
			} else if (pid == 0) {
				// Child of the child. Will be reparented to the init process
				char *terminal = FUNC3("TERMINAL");
				if (button->terminal && terminal && FUNC5(terminal)) {
					FUNC6(SWAY_DEBUG, "Found $TERMINAL: %s", terminal);
					if (!FUNC9(terminal, button->action)) {
						FUNC8(swaynag);
						FUNC0(EXIT_FAILURE);
					}
				} else {
					if (button->terminal) {
						FUNC6(SWAY_DEBUG,
								"$TERMINAL not found. Running directly");
					}
					FUNC1("/bin/sh", "/bin/sh", "-c", button->action, NULL);
					FUNC7(SWAY_DEBUG, "execl failed");
					FUNC0(EXIT_FAILURE);
				}
			}
			FUNC0(EXIT_SUCCESS);
		}
		if (FUNC10(pid, NULL, 0) < 0) {
			FUNC7(SWAY_DEBUG, "waitpid failed");
		}
	}
}