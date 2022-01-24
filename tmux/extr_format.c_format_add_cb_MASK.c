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
struct format_tree {int /*<<< orphan*/  tree; } ;
struct format_entry {struct format_entry* value; scalar_t__ t; int /*<<< orphan*/  cb; struct format_entry* key; } ;
typedef  int /*<<< orphan*/  format_cb ;

/* Variables and functions */
 struct format_entry* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct format_entry*) ; 
 int /*<<< orphan*/  format_entry_tree ; 
 int /*<<< orphan*/  FUNC1 (struct format_entry*) ; 
 struct format_entry* FUNC2 (int) ; 
 struct format_entry* FUNC3 (char const*) ; 

__attribute__((used)) static void
FUNC4(struct format_tree *ft, const char *key, format_cb cb)
{
	struct format_entry	*fe;
	struct format_entry	*fe_now;

	fe = FUNC2(sizeof *fe);
	fe->key = FUNC3(key);

	fe_now = FUNC0(format_entry_tree, &ft->tree, fe);
	if (fe_now != NULL) {
		FUNC1(fe->key);
		FUNC1(fe);
		FUNC1(fe_now->value);
		fe = fe_now;
	}

	fe->cb = cb;
	fe->t = 0;

	fe->value = NULL;
}