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
typedef  size_t u_int ;
struct mouse_event {scalar_t__ x; int y; int /*<<< orphan*/  b; } ;
struct menu_item {char* name; scalar_t__ key; int /*<<< orphan*/  command; } ;
struct menu_data {int choice; int flags; scalar_t__ px; int py; int /*<<< orphan*/  fs; TYPE_2__* item; int /*<<< orphan*/  (* cb ) (struct menu*,size_t,scalar_t__,int /*<<< orphan*/ ) ;int /*<<< orphan*/  data; struct menu* menu; } ;
struct menu {int count; scalar_t__ width; struct menu_item* items; } ;
struct key_event {scalar_t__ key; struct mouse_event m; } ;
struct cmdq_item {int dummy; } ;
struct cmd_parse_result {int status; int /*<<< orphan*/  cmdlist; int /*<<< orphan*/  error; } ;
struct client {int /*<<< orphan*/  flags; struct menu_data* overlay_data; } ;
struct TYPE_4__ {TYPE_1__* shared; } ;
struct TYPE_3__ {struct mouse_event mouse; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENT_REDRAWOVERLAY ; 
#define  CMD_PARSE_EMPTY 132 
#define  CMD_PARSE_ERROR 131 
#define  CMD_PARSE_SUCCESS 130 
#define  KEYC_DOWN 129 
 scalar_t__ FUNC0 (scalar_t__) ; 
#define  KEYC_UP 128 
 int MENU_NOMOUSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct cmd_parse_result* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct client*,struct cmdq_item*) ; 
 struct cmdq_item* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mouse_event*,int /*<<< orphan*/ ) ; 
 struct cmdq_item* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct menu*,size_t,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct client *c, struct key_event *event)
{
	struct menu_data		*md = c->overlay_data;
	struct menu			*menu = md->menu;
	struct mouse_event		*m = &event->m;
	u_int				 i;
	int				 count = menu->count, old = md->choice;
	const struct menu_item		*item;
	struct cmdq_item		*new_item;
	struct cmd_parse_result		*pr;
	const char			*name;

	if (FUNC0(event->key)) {
		if (md->flags & MENU_NOMOUSE) {
			if (FUNC1(m->b) != 0)
				return (1);
			return (0);
		}
		if (m->x < md->px ||
		    m->x > md->px + 4 + menu->width ||
		    m->y < md->py + 1 ||
		    m->y > md->py + 1 + count - 1) {
			if (FUNC2(m->b))
				return (1);
			if (md->choice != -1) {
				md->choice = -1;
				c->flags |= CLIENT_REDRAWOVERLAY;
			}
			return (0);
		}
		if (FUNC2(m->b))
			goto chosen;
		md->choice = m->y - (md->py + 1);
		if (md->choice != old)
			c->flags |= CLIENT_REDRAWOVERLAY;
		return (0);
	}
	for (i = 0; i < (u_int)count; i++) {
		name = menu->items[i].name;
		if (name == NULL || *name == '-')
			continue;
		if (event->key == menu->items[i].key) {
			md->choice = i;
			goto chosen;
		}
	}
	switch (event->key) {
	case KEYC_UP:
	case 'k':
		if (old == -1)
			old = 0;
		do {
			if (md->choice == -1 || md->choice == 0)
				md->choice = count - 1;
			else
				md->choice--;
			name = menu->items[md->choice].name;
		} while ((name == NULL || *name == '-') && md->choice != old);
		c->flags |= CLIENT_REDRAWOVERLAY;
		return (0);
	case KEYC_DOWN:
	case 'j':
		if (old == -1)
			old = 0;
		do {
			if (md->choice == -1 || md->choice == count - 1)
				md->choice = 0;
			else
				md->choice++;
			name = menu->items[md->choice].name;
		} while ((name == NULL || *name == '-') && md->choice != old);
		c->flags |= CLIENT_REDRAWOVERLAY;
		return (0);
	case '\r':
		goto chosen;
	case '\033': /* Escape */
	case '\003': /* C-c */
	case '\007': /* C-g */
	case 'q':
		return (1);
	}
	return (0);

chosen:
	if (md->choice == -1)
		return (1);
	item = &menu->items[md->choice];
	if (item->name == NULL || *item->name == '-')
		return (1);
	if (md->cb != NULL) {
	    md->cb(md->menu, md->choice, item->key, md->data);
	    md->cb = NULL;
	    return (1);
	}

	pr = FUNC4(item->command, NULL);
	switch (pr->status) {
	case CMD_PARSE_EMPTY:
		new_item = NULL;
		break;
	case CMD_PARSE_ERROR:
		new_item = FUNC7(pr->error);
		FUNC8(pr->error);
		FUNC5(c, new_item);
		break;
	case CMD_PARSE_SUCCESS:
		if (md->item != NULL)
			m = &md->item->shared->mouse;
		else
			m = NULL;
		new_item = FUNC6(pr->cmdlist, &md->fs, m, 0);
		FUNC3(pr->cmdlist);
		FUNC5(c, new_item);
		break;
	}
	return (1);
}