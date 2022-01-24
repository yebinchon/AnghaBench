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
struct window_mode_entry {struct window_copy_mode_data* data; } ;
struct window_copy_mode_data {scalar_t__ rectflag; int /*<<< orphan*/  lineflag; } ;
struct window_copy_cmd_state {struct session* s; struct window_mode_entry* wme; } ;
struct session {int /*<<< orphan*/  options; } ;
typedef  enum window_copy_cmd_action { ____Placeholder_window_copy_cmd_action } window_copy_cmd_action ;

/* Variables and functions */
 int /*<<< orphan*/  LINE_SEL_LEFT_RIGHT ; 
 int WINDOW_COPY_CMD_REDRAW ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct window_mode_entry*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct window_mode_entry*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct window_mode_entry*) ; 

__attribute__((used)) static enum window_copy_cmd_action
FUNC4(struct window_copy_cmd_state *cs)
{
	struct window_mode_entry	*wme = cs->wme;
	struct session			*s = cs->s;
	struct window_copy_mode_data	*data = wme->data;
	const char			*ws;

	data->lineflag = LINE_SEL_LEFT_RIGHT;
	data->rectflag = 0;

	ws = FUNC0(s->options, "word-separators");
	FUNC2(wme, ws, 0);
	FUNC3(wme);
	FUNC1(wme, ws);

	return (WINDOW_COPY_CMD_REDRAW);
}