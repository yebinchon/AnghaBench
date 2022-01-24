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
struct window {int /*<<< orphan*/ * layout_root; int /*<<< orphan*/ * saved_layout_root; } ;
struct format_tree {struct window* w; } ;
struct format_entry {void* value; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(struct format_tree *ft, struct format_entry *fe)
{
	struct window	*w = ft->w;

	if (w == NULL)
		return;

	if (w->saved_layout_root != NULL)
		fe->value = FUNC0(w->saved_layout_root);
	else
		fe->value = FUNC0(w->layout_root);
}