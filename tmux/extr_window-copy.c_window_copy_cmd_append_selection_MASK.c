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
struct window_mode_entry {int dummy; } ;
struct window_copy_cmd_state {struct session* s; struct window_mode_entry* wme; } ;
struct session {int dummy; } ;
typedef  enum window_copy_cmd_action { ____Placeholder_window_copy_cmd_action } window_copy_cmd_action ;

/* Variables and functions */
 int WINDOW_COPY_CMD_REDRAW ; 
 int /*<<< orphan*/  FUNC0 (struct window_mode_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct window_mode_entry*) ; 

__attribute__((used)) static enum window_copy_cmd_action
FUNC2(struct window_copy_cmd_state *cs)
{
	struct window_mode_entry	*wme = cs->wme;
	struct session			*s = cs->s;

	if (s != NULL)
		FUNC0(wme);
	FUNC1(wme);
	return (WINDOW_COPY_CMD_REDRAW);
}