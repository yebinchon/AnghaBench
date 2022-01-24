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
struct environ_entry {int /*<<< orphan*/  name; int /*<<< orphan*/ * value; } ;
struct cmdq_item {int dummy; } ;
struct cmd {int /*<<< orphan*/  args; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char) ; 
 char* FUNC1 (struct environ_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct cmdq_item*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(struct cmd *self, struct cmdq_item *item,
    struct environ_entry *envent)
{
	char	*escaped;

	if (!FUNC0(self->args, 's')) {
		if (envent->value != NULL)
			FUNC2(item, "%s=%s", envent->name, envent->value);
		else
			FUNC2(item, "-%s", envent->name);
		return;
	}

	if (envent->value != NULL) {
		escaped = FUNC1(envent);
		FUNC2(item, "%s=\"%s\"; export %s;", envent->name, escaped,
		    envent->name);
		FUNC3(escaped);
	} else
		FUNC2(item, "unset %s;", envent->name);
}