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
struct notify_entry {char const* name; int /*<<< orphan*/  pane; int /*<<< orphan*/  window; int /*<<< orphan*/  session; int /*<<< orphan*/  client; int /*<<< orphan*/  fs; } ;
struct TYPE_4__ {TYPE_1__* wp; int /*<<< orphan*/  w; int /*<<< orphan*/  s; } ;
struct cmdq_item {TYPE_2__ target; int /*<<< orphan*/  client; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct notify_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cmdq_item*,struct notify_entry*) ; 

void
FUNC3(struct cmdq_item *item, const char *name)
{
	struct notify_entry	ne;

	FUNC1(&ne, 0, sizeof ne);

	ne.name = name;
	FUNC0(&ne.fs, &item->target);

	ne.client = item->client;
	ne.session = item->target.s;
	ne.window = item->target.w;
	ne.pane = item->target.wp->id;

	FUNC2(item, &ne);
}