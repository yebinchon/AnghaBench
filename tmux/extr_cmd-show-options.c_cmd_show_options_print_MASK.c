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
struct options_entry {int dummy; } ;
struct options_array_item {int dummy; } ;
struct cmdq_item {int dummy; } ;
struct cmd {int /*<<< orphan*/  args; } ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC2 (struct cmdq_item*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct options_array_item* FUNC4 (struct options_entry*) ; 
 int FUNC5 (struct options_array_item*) ; 
 struct options_array_item* FUNC6 (struct options_array_item*) ; 
 scalar_t__ FUNC7 (struct options_entry*) ; 
 scalar_t__ FUNC8 (struct options_entry*) ; 
 char* FUNC9 (struct options_entry*) ; 
 char* FUNC10 (struct options_entry*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char**,char*,char const*,int) ; 

__attribute__((used)) static void
FUNC12(struct cmd *self, struct cmdq_item *item,
    struct options_entry *o, int idx, int parent)
{
	struct options_array_item	*a;
	const char			*name = FUNC9(o);
	char				*value, *tmp = NULL, *escaped;

	if (idx != -1) {
		FUNC11(&tmp, "%s[%d]", name, idx);
		name = tmp;
	} else {
		if (FUNC7(o)) {
			a = FUNC4(o);
			if (a == NULL) {
				if (!FUNC1(self->args, 'v'))
					FUNC2(item, "%s", name);
				return;
			}
			while (a != NULL) {
				idx = FUNC5(a);
				FUNC12(self, item, o, idx,
				    parent);
				a = FUNC6(a);
			}
			return;
		}
	}

	value = FUNC10(o, idx, 0);
	if (FUNC1(self->args, 'v'))
		FUNC2(item, "%s", value);
	else if (FUNC8(o)) {
		escaped = FUNC0(value);
		if (parent)
			FUNC2(item, "%s* %s", name, escaped);
		else
			FUNC2(item, "%s %s", name, escaped);
		FUNC3(escaped);
	} else {
		if (parent)
			FUNC2(item, "%s* %s", name, value);
		else
			FUNC2(item, "%s %s", name, value);
	}
	FUNC3(value);

	FUNC3(tmp);
}