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
struct options_table_entry {int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*,int*) ; 
 struct options_table_entry* options_table ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*) ; 
 size_t FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,size_t) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 

char *
FUNC6(const char *s, int *idx, int *ambiguous)
{
	const struct options_table_entry	*oe, *found;
	char					*name;
	size_t					 namelen;

	name = FUNC1(s, idx);
	if (name == NULL)
		return (NULL);
	namelen = FUNC3(name);

	if (*name == '@') {
		*ambiguous = 0;
		return (name);
	}

	found = NULL;
	for (oe = options_table; oe->name != NULL; oe++) {
		if (FUNC2(oe->name, name) == 0) {
			found = oe;
			break;
		}
		if (FUNC4(oe->name, name, namelen) == 0) {
			if (found != NULL) {
				*ambiguous = 1;
				FUNC0(name);
				return (NULL);
			}
			found = oe;
		}
	}
	FUNC0(name);
	if (found == NULL) {
		*ambiguous = 0;
		return (NULL);
	}
	return (FUNC5(found->name));
}