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
typedef  size_t u_int ;
struct options_table_entry {char const* name; } ;
struct options_entry {int dummy; } ;
struct options_array_item {int dummy; } ;
struct cmd_entry {char const* name; } ;
struct TYPE_2__ {char* string; } ;

/* Variables and functions */
 struct cmd_entry** cmd_table ; 
 int /*<<< orphan*/  global_options ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t,char*) ; 
 struct options_array_item* FUNC1 (struct options_entry*) ; 
 TYPE_1__* FUNC2 (struct options_array_item*) ; 
 struct options_array_item* FUNC3 (struct options_array_item*) ; 
 struct options_entry* FUNC4 (int /*<<< orphan*/ ,char*) ; 
 struct options_table_entry* options_table ; 
 char* FUNC5 (char const*,char) ; 
 size_t FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (char const*,char const*,size_t) ; 
 char** FUNC8 (char**,size_t,int) ; 
 char* FUNC9 (char const*) ; 
 char* FUNC10 (char const*,size_t) ; 

char **
FUNC11(u_int *size, const char *s)
{
	char					**list = NULL;
	const char				**layout, *value, *cp;
	const struct cmd_entry			**cmdent;
	const struct options_table_entry	 *oe;
	u_int					  idx;
	size_t					  slen = FUNC6(s), valuelen;
	struct options_entry			 *o;
	struct options_array_item		 *a;
	const char				 *layouts[] = {
		"even-horizontal", "even-vertical", "main-horizontal",
		"main-vertical", "tiled", NULL
	};

	*size = 0;
	for (cmdent = cmd_table; *cmdent != NULL; cmdent++) {
		if (FUNC7((*cmdent)->name, s, slen) == 0) {
			list = FUNC8(list, (*size) + 1, sizeof *list);
			list[(*size)++] = FUNC9((*cmdent)->name);
		}
	}
	for (oe = options_table; oe->name != NULL; oe++) {
		if (FUNC7(oe->name, s, slen) == 0) {
			list = FUNC8(list, (*size) + 1, sizeof *list);
			list[(*size)++] = FUNC9(oe->name);
		}
	}
	for (layout = layouts; *layout != NULL; layout++) {
		if (FUNC7(*layout, s, slen) == 0) {
			list = FUNC8(list, (*size) + 1, sizeof *list);
			list[(*size)++] = FUNC9(*layout);
		}
	}
	o = FUNC4(global_options, "command-alias");
	if (o != NULL) {
		a = FUNC1(o);
		while (a != NULL) {
			value = FUNC2(a)->string;
			if ((cp = FUNC5(value, '=')) == NULL)
				goto next;
			valuelen = cp - value;
			if (slen > valuelen || FUNC7(value, s, slen) != 0)
				goto next;

			list = FUNC8(list, (*size) + 1, sizeof *list);
			list[(*size)++] = FUNC10(value, valuelen);

		next:
			a = FUNC3(a);
		}
	}
	for (idx = 0; idx < (*size); idx++)
		FUNC0("complete %u: %s", idx, list[idx]);
	return (list);
}