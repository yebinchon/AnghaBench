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
struct sway_binding {char* command; int order; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 char* FUNC0 (char**,char*,int /*<<< orphan*/ *) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char) ; 
 char* FUNC4 (size_t) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC12 (char*) ; 
 scalar_t__ FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char const*,char*) ; 

__attribute__((used)) static void FUNC15(const struct sway_binding * binding,
		const char* output_name, int *min_order, char **earliest_name) {
	char *cmdlist = FUNC6(binding->command);
	char *dup = cmdlist;
	char *name = NULL;

	// workspace n
	char *cmd = FUNC0(&cmdlist, " ", NULL);
	if (cmdlist) {
		name = FUNC0(&cmdlist, ",;", NULL);
	}

	// TODO: support "move container to workspace" bindings as well

	if (FUNC5("workspace", cmd) == 0 && name) {
		char *_target = FUNC6(name);
		_target = FUNC1(_target);
		FUNC7(_target);
		FUNC11(SWAY_DEBUG, "Got valid workspace command for target: '%s'",
				_target);

		// Make sure that the command references an actual workspace
		// not a command about workspaces
		if (FUNC5(_target, "next") == 0 ||
				FUNC5(_target, "prev") == 0 ||
				FUNC9(_target, "next_on_output",
					FUNC8("next_on_output")) == 0 ||
				FUNC9(_target, "prev_on_output",
					FUNC8("next_on_output")) == 0 ||
				FUNC5(_target, "number") == 0 ||
				FUNC5(_target, "back_and_forth") == 0 ||
				FUNC5(_target, "current") == 0) {
			FUNC2(_target);
			FUNC2(dup);
			return;
		}

		// If the command is workspace number <name>, isolate the name
		if (FUNC9(_target, "number ", FUNC8("number ")) == 0) {
			size_t length = FUNC8(_target) - FUNC8("number ") + 1;
			char *temp = FUNC4(length);
			FUNC10(temp, _target + FUNC8("number "), length - 1);
			temp[length - 1] = '\0';
			FUNC2(_target);
			_target = temp;
			FUNC11(SWAY_DEBUG, "Isolated name from workspace number: '%s'", _target);

			// Make sure the workspace number doesn't already exist
			if (FUNC3(_target[0]) && FUNC13(_target)) {
				FUNC2(_target);
				FUNC2(dup);
				return;
			}
		}

		// Make sure that the workspace doesn't already exist
		if (FUNC12(_target)) {
			FUNC2(_target);
			FUNC2(dup);
			return;
		}

		// make sure that the workspace can appear on the given
		// output
		if (!FUNC14(output_name, _target)) {
			FUNC2(_target);
			FUNC2(dup);
			return;
		}

		if (binding->order < *min_order) {
			*min_order = binding->order;
			FUNC2(*earliest_name);
			*earliest_name = _target;
			FUNC11(SWAY_DEBUG, "Workspace: Found free name %s", _target);
		} else {
			FUNC2(_target);
		}
	}
	FUNC2(dup);
}