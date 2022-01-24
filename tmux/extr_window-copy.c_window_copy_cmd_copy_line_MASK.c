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
typedef  int u_int ;
struct winlink {int dummy; } ;
struct window_pane {int dummy; } ;
struct window_mode_entry {int prefix; struct window_pane* wp; } ;
struct window_copy_cmd_state {TYPE_1__* args; struct winlink* wl; struct session* s; struct client* c; struct window_mode_entry* wme; } ;
struct session {int dummy; } ;
struct client {int dummy; } ;
typedef  enum window_copy_cmd_action { ____Placeholder_window_copy_cmd_action } window_copy_cmd_action ;
struct TYPE_2__ {int argc; int /*<<< orphan*/ * argv; } ;

/* Variables and functions */
 int WINDOW_COPY_CMD_CANCEL ; 
 int WINDOW_COPY_CMD_REDRAW ; 
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct client*,struct session*,struct winlink*,struct window_pane*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct window_mode_entry*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct window_mode_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct window_mode_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct window_mode_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct window_mode_entry*) ; 

__attribute__((used)) static enum window_copy_cmd_action
FUNC7(struct window_copy_cmd_state *cs)
{
	struct window_mode_entry	*wme = cs->wme;
	struct client			*c = cs->c;
	struct session			*s = cs->s;
	struct winlink			*wl = cs->wl;
	struct window_pane		*wp = wme->wp;
	u_int				 np = wme->prefix;
	char				*prefix = NULL;

	if (cs->args->argc == 2)
		prefix = FUNC0(NULL, cs->args->argv[1], c, s, wl, wp);

	FUNC5(wme);
	FUNC6(wme);
	for (; np > 1; np--)
		FUNC3(wme, 0);
	FUNC4(wme);

	if (s != NULL) {
		FUNC2(wme, prefix);

		FUNC1(prefix);
		return (WINDOW_COPY_CMD_CANCEL);
	}

	FUNC1(prefix);
	return (WINDOW_COPY_CMD_REDRAW);
}