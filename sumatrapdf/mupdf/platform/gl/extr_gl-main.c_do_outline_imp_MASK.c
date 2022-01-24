#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct list {int dummy; } ;
struct TYPE_7__ {int page; int is_open; struct TYPE_7__* next; struct TYPE_7__* down; int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  uri; int /*<<< orphan*/  title; } ;
typedef  TYPE_1__ fz_outline ;
struct TYPE_8__ {int page; } ;

/* Variables and functions */
 int /*<<< orphan*/  ctx ; 
 TYPE_3__ currentpage ; 
 int /*<<< orphan*/  doc ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct list*,TYPE_1__*,int /*<<< orphan*/ ,int,int,int,int*) ; 

__attribute__((used)) static void FUNC5(struct list *list, int end, fz_outline *node, int depth)
{
	int is_selected, was_open, n;

	while (node)
	{
		int p = node->page;
		n = end;
		if (node->next && node->next->page >= 0)
			n = node->next->page;

		was_open = node->is_open;
		is_selected = 0;
		if (FUNC0(ctx, doc) == 1)
			is_selected = (p>=0) && (currentpage.page == p || (currentpage.page > p && currentpage.page < n));
		if (FUNC4(list, node, node->title, is_selected, depth, !!node->down, &node->is_open))
		{
			if (p < 0)
			{
				currentpage = FUNC1(ctx, doc, node->uri, &node->x, &node->y);
				FUNC2(currentpage, node->x, node->y);
			}
			else
			{
				FUNC3(p, node->x, node->y);
			}
		}

		if (node->down && (was_open || is_selected))
			FUNC5(list, n, node->down, depth + 1);
		node = node->next;
	}
}