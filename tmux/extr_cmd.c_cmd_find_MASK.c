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
struct cmd_entry {char* alias; char* name; } ;

/* Variables and functions */
 struct cmd_entry** cmd_table ; 
 scalar_t__ FUNC0 (char*,char const*) ; 
 int FUNC1 (char*,char*,int) ; 
 int FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char**,char*,char const*,...) ; 

__attribute__((used)) static const struct cmd_entry *
FUNC5(const char *name, char **cause)
{
	const struct cmd_entry	**loop, *entry, *found = NULL;
	int			  ambiguous;
	char			  s[8192];

	ambiguous = 0;
	for (loop = cmd_table; *loop != NULL; loop++) {
		entry = *loop;
		if (entry->alias != NULL && FUNC0(entry->alias, name) == 0) {
			ambiguous = 0;
			found = entry;
			break;
		}

		if (FUNC3(entry->name, name, FUNC2(name)) != 0)
			continue;
		if (found != NULL)
			ambiguous = 1;
		found = entry;

		if (FUNC0(entry->name, name) == 0)
			break;
	}
	if (ambiguous)
		goto ambiguous;
	if (found == NULL) {
		FUNC4(cause, "unknown command: %s", name);
		return (NULL);
	}
	return (found);

ambiguous:
	*s = '\0';
	for (loop = cmd_table; *loop != NULL; loop++) {
		entry = *loop;
		if (FUNC3(entry->name, name, FUNC2(name)) != 0)
			continue;
		if (FUNC1(s, entry->name, sizeof s) >= sizeof s)
			break;
		if (FUNC1(s, ", ", sizeof s) >= sizeof s)
			break;
	}
	s[FUNC2(s) - 2] = '\0';
	FUNC4(cause, "ambiguous command: %s, could be: %s", name, s);
	return (NULL);
}