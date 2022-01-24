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
struct keymap {size_t size; struct keybinding** data; } ;
struct keybinding {int request; size_t keys; int /*<<< orphan*/  key; } ;
struct key {int dummy; } ;
typedef  enum status_code { ____Placeholder_status_code } status_code ;
typedef  enum request { ____Placeholder_request } request ;

/* Variables and functions */
 int SIZEOF_STR ; 
 int SUCCESS ; 
 struct keybinding* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*,char*,char*) ; 
 char* FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct keybinding*,struct key const*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct key const*,int) ; 
 struct keybinding** FUNC6 (struct keybinding**,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 

enum status_code
FUNC9(struct keymap *table, enum request request,
	       const struct key key[], size_t keys)
{
	struct keybinding *keybinding;
	char buf[SIZEOF_STR];
	bool conflict = false;
	size_t i;

	for (i = 0; i < table->size; i++) {
		if (FUNC4(table->data[i], key, keys, &conflict)) {
			enum request old_request = table->data[i]->request;
			const char *old_name;

			table->data[i]->request = request;
			if (!conflict)
				return SUCCESS;

			old_name = FUNC3(old_request);
			FUNC7(buf, old_name, FUNC8(old_name));
			return FUNC2("Key binding for %s and %s conflict; "
				     "keys using Ctrl are case insensitive",
				     buf, FUNC3(request));
		}
	}

	table->data = FUNC6(table->data, (table->size + 1) * sizeof(*table->data));
	keybinding = FUNC0(1, sizeof(*keybinding) + (sizeof(*key) * (keys - 1)));
	if (!table->data || !keybinding)
		FUNC1("Failed to allocate keybinding");

	FUNC5(keybinding->key, key, sizeof(*key) * keys);
	keybinding->keys = keys;
	keybinding->request = request;
	table->data[table->size++] = keybinding;
	return SUCCESS;
}