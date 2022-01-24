#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct window_mode_entry {TYPE_2__* mode; } ;
struct key_table {int /*<<< orphan*/  references; } ;
struct key_binding {int dummy; } ;
struct cmdq_item {int /*<<< orphan*/  target; int /*<<< orphan*/  client; } ;
struct cmd_find_state {int /*<<< orphan*/  wl; int /*<<< orphan*/  s; TYPE_3__* wp; } ;
struct client {int dummy; } ;
typedef  int key_code ;
struct TYPE_6__ {TYPE_1__* window; int /*<<< orphan*/  modes; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* key_table ) (struct window_mode_entry*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  options; } ;

/* Variables and functions */
 int KEYC_XTERM ; 
 struct window_mode_entry* FUNC0 (int /*<<< orphan*/ *) ; 
 struct cmdq_item* FUNC1 (struct key_binding*,struct cmdq_item*,struct client*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct key_binding* FUNC2 (struct key_table*,int) ; 
 struct key_table* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct key_table*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct window_mode_entry*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct cmdq_item *
FUNC8(struct client *c, struct cmd_find_state *fs,
    struct cmdq_item *item, key_code key)
{
	struct window_mode_entry	*wme;
	struct key_table		*table;
	struct key_binding		*bd;

	wme = FUNC0(&fs->wp->modes);
	if (wme == NULL || wme->mode->key_table == NULL) {
		if (FUNC5(fs->wp->window->options, "xterm-keys"))
			key |= KEYC_XTERM;
		FUNC7(fs->wp, item->client, fs->s, fs->wl, key, NULL);
		return (item);
	}
	table = FUNC3(wme->mode->key_table(wme), 1);

	bd = FUNC2(table, key & ~KEYC_XTERM);
	if (bd != NULL) {
		table->references++;
		item = FUNC1(bd, item, c, NULL, &item->target);
		FUNC4(table);
	}
	return (item);
}