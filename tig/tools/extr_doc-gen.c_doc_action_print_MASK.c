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
struct request_info {char* help; int /*<<< orphan*/  name; } ;
struct doc_action_iterator {char const* group; int end_group; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static bool
FUNC4(void *data, const struct request_info *req_info, const char *group)
{
	struct doc_action_iterator *iterator = data;

	if (iterator->group != group) {
		if (iterator->end_group) {
			FUNC1(false);
			FUNC3("\n");
		}

		FUNC0(group);
		FUNC1(true);

		iterator->group = group;
		iterator->end_group = true;
	}

	FUNC3("|%-24s|%s\n", FUNC2(req_info->name), req_info->help);
	return true;
}