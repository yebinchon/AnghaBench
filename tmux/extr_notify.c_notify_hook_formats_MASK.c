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
struct window {int id; int name; } ;
struct session {int id; int name; } ;
struct cmdq_item {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cmdq_item*,char*,char*,int) ; 

__attribute__((used)) static void
FUNC1(struct cmdq_item *item, struct session *s, struct window *w,
    int pane)
{
	if (s != NULL) {
		FUNC0(item, "hook_session", "$%u", s->id);
		FUNC0(item, "hook_session_name", "%s", s->name);
	}
	if (w != NULL) {
		FUNC0(item, "hook_window", "@%u", w->id);
		FUNC0(item, "hook_window_name", "%s", w->name);
	}
	if (pane != -1)
		FUNC0(item, "hook_pane", "%%%d", pane);
}