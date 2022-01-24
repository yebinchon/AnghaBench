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
struct TYPE_2__ {char const* cmd; } ;

/* Variables and functions */
 int CMD_MATCH_MULTI ; 
 int CMD_MATCH_NONE ; 
 TYPE_1__* Commands ; 
 int /*<<< orphan*/  MSG_AMBIGUOUS_COMMAND ; 
 int /*<<< orphan*/  MSG_UNKNOWN_COMMAND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 size_t FUNC3 (char const*) ; 

int FUNC4(const char *cmd)
{
#define CMD_MATCH_NONE	-1
#define CMD_MATCH_MULTI	-2

	size_t len;
	int idx;
	int match;

	//	skip a leading '/'

	if (*cmd == '/') {
		cmd++;
	}

	if (*cmd == '\0') {

		//	empty command

		return CMD_MATCH_NONE;
	}

	//	find a match
	len = FUNC3(cmd);
	idx = 0;
	match = CMD_MATCH_NONE;

	while (Commands[idx].cmd) {

		if (FUNC3(Commands[idx].cmd) >= len &&
			!FUNC1(cmd, Commands[idx].cmd, len)) {

			if (match == CMD_MATCH_NONE) {		//	first match
				match = idx;
			}
			else {								//	multiple matches
				if (match != CMD_MATCH_MULTI) {	//	first time
					FUNC0(MSG_AMBIGUOUS_COMMAND, cmd);
					FUNC2("> %s ", Commands[match].cmd);
					match = CMD_MATCH_MULTI;
				}

				FUNC2("%s ", Commands[idx].cmd);
			}
		}

		idx++;
	}

	if (match == CMD_MATCH_NONE) {				//	match not found
		FUNC0(MSG_UNKNOWN_COMMAND, cmd);
	}
	else if (match == CMD_MATCH_MULTI) {		//	multiple matches
		FUNC2("\n");
	}

	return match;
}