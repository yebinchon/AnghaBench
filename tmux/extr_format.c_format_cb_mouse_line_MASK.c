#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_4__ {int /*<<< orphan*/  grid; } ;
struct window_pane {TYPE_1__ base; int /*<<< orphan*/  modes; } ;
struct TYPE_5__ {int /*<<< orphan*/  valid; } ;
struct format_tree {TYPE_2__ m; } ;
struct format_entry {char* value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct window_pane*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct window_pane* FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct format_tree *ft, struct format_entry *fe)
{
	struct window_pane	*wp;
	u_int			 x, y;
	char			*s;

	if (!ft->m.valid)
		return;
	wp = FUNC2(&ft->m, NULL, NULL);
	if (wp == NULL)
		return;
	if (!FUNC0 (&wp->modes))
		return;
	if (FUNC1(wp, &ft->m, &x, &y, 0) != 0)
		return;

	s = FUNC3(wp->base.grid, y);
	if (s != NULL)
		fe->value = s;
}