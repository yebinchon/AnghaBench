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
typedef  int u_int ;
struct window_mode_entry {int prefix; struct window_copy_mode_data* data; } ;
struct window_copy_mode_data {scalar_t__ rectflag; int /*<<< orphan*/  lineflag; } ;
struct window_copy_cmd_state {struct window_mode_entry* wme; } ;
typedef  enum window_copy_cmd_action { ____Placeholder_window_copy_cmd_action } window_copy_cmd_action ;

/* Variables and functions */
 int /*<<< orphan*/  LINE_SEL_LEFT_RIGHT ; 
 int WINDOW_COPY_CMD_REDRAW ; 
 int /*<<< orphan*/  FUNC0 (struct window_mode_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct window_mode_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct window_mode_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct window_mode_entry*) ; 

__attribute__((used)) static enum window_copy_cmd_action
FUNC4(struct window_copy_cmd_state *cs)
{
	struct window_mode_entry	*wme = cs->wme;
	struct window_copy_mode_data	*data = wme->data;
	u_int				 np = wme->prefix;

	data->lineflag = LINE_SEL_LEFT_RIGHT;
	data->rectflag = 0;

	FUNC2(wme);
	FUNC3(wme);
	for (; np > 1; np--)
		FUNC0(wme, 0);
	FUNC1(wme);

	return (WINDOW_COPY_CMD_REDRAW);
}