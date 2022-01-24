#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct window_pane {int /*<<< orphan*/  id; } ;
struct window {int dummy; } ;
struct key_event {char key; } ;
struct cmdq_item {int dummy; } ;
struct cmd_parse_result {int status; char* error; int /*<<< orphan*/  cmdlist; } ;
struct cmd_display_panes_data {int /*<<< orphan*/  command; } ;
struct client {TYPE_2__* session; struct cmd_display_panes_data* overlay_data; } ;
struct TYPE_4__ {TYPE_1__* curw; } ;
struct TYPE_3__ {struct window* window; } ;

/* Variables and functions */
#define  CMD_PARSE_EMPTY 130 
#define  CMD_PARSE_ERROR 129 
#define  CMD_PARSE_SUCCESS 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct cmd_parse_result* FUNC1 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct client*,struct cmdq_item*) ; 
 struct cmdq_item* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct cmdq_item* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 struct window_pane* FUNC7 (struct window*,char) ; 
 int /*<<< orphan*/  FUNC8 (struct window*) ; 
 int /*<<< orphan*/  FUNC9 (char**,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct client *c, struct key_event *event)
{
	struct cmd_display_panes_data	*cdata = c->overlay_data;
	struct cmdq_item		*new_item;
	char				*cmd, *expanded;
	struct window			*w = c->session->curw->window;
	struct window_pane		*wp;
	struct cmd_parse_result		*pr;

	if (event->key < '0' || event->key > '9')
		return (-1);

	wp = FUNC7(w, event->key - '0');
	if (wp == NULL)
		return (1);
	FUNC8(w);

	FUNC9(&expanded, "%%%u", wp->id);
	cmd = FUNC2(cdata->command, expanded, 1);

	pr = FUNC1(cmd, NULL);
	switch (pr->status) {
	case CMD_PARSE_EMPTY:
		new_item = NULL;
		break;
	case CMD_PARSE_ERROR:
		new_item = FUNC5(pr->error);
		FUNC6(pr->error);
		FUNC3(c, new_item);
		break;
	case CMD_PARSE_SUCCESS:
		new_item = FUNC4(pr->cmdlist, NULL, NULL, 0);
		FUNC0(pr->cmdlist);
		FUNC3(c, new_item);
		break;
	}

	FUNC6(cmd);
	FUNC6(expanded);
	return (1);
}