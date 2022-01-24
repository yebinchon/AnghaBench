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
typedef  scalar_t__ u_int ;
struct window_mode_entry {scalar_t__ prefix; int /*<<< orphan*/  wp; struct window_copy_mode_data* data; } ;
struct window_copy_mode_data {char* searchstr; int /*<<< orphan*/  searchtype; } ;
struct window_copy_cmd_state {TYPE_1__* args; struct window_mode_entry* wme; } ;
typedef  enum window_copy_cmd_action { ____Placeholder_window_copy_cmd_action } window_copy_cmd_action ;
struct TYPE_2__ {int argc; char** argv; } ;

/* Variables and functions */
 int WINDOW_COPY_CMD_NOTHING ; 
 int /*<<< orphan*/  WINDOW_COPY_SEARCHDOWN ; 
 scalar_t__ FUNC0 (TYPE_1__*,float) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct window_mode_entry*) ; 
 char* FUNC4 (char const*) ; 

__attribute__((used)) static enum window_copy_cmd_action
FUNC5(struct window_copy_cmd_state *cs)
{
	struct window_mode_entry	*wme = cs->wme;
	struct window_copy_mode_data	*data = wme->data;
	u_int				 np = wme->prefix;
	const char			*argument;
	char				*expanded;

	if (cs->args->argc == 2) {
		argument = cs->args->argv[1];
		if (*argument != '\0') {
			if (FUNC0(cs->args, 'F')) {
				expanded = FUNC1(NULL, argument, NULL,
				    NULL, NULL, wme->wp);
				if (*expanded == '\0') {
					FUNC2(expanded);
					return (WINDOW_COPY_CMD_NOTHING);
				}
				FUNC2(data->searchstr);
				data->searchstr = expanded;
			} else {
				FUNC2(data->searchstr);
				data->searchstr = FUNC4(argument);
			}
		}
	}
	if (data->searchstr != NULL) {
		data->searchtype = WINDOW_COPY_SEARCHDOWN;
		for (; np != 0; np--)
			FUNC3(wme);
	}
	return (WINDOW_COPY_CMD_NOTHING);
}