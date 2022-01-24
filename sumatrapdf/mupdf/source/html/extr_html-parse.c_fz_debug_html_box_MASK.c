#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int type; double em; double x; double y; double w; double b; double* margin; int list_item; char* id; char* href; struct TYPE_3__* next; scalar_t__ flow_head; struct TYPE_3__* down; scalar_t__ is_first_flow; } ;
typedef  TYPE_1__ fz_html_box ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
#define  BOX_BLOCK 134 
#define  BOX_BREAK 133 
#define  BOX_FLOW 132 
#define  BOX_INLINE 131 
#define  BOX_TABLE 130 
#define  BOX_TABLE_CELL 129 
#define  BOX_TABLE_ROW 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void
FUNC3(fz_context *ctx, fz_html_box *box, int level)
{
	while (box)
	{
		FUNC1(level);
		switch (box->type) {
		case BOX_BLOCK: FUNC2("block"); break;
		case BOX_BREAK: FUNC2("break"); break;
		case BOX_FLOW: FUNC2("flow"); break;
		case BOX_INLINE: FUNC2("inline"); break;
		case BOX_TABLE: FUNC2("table"); break;
		case BOX_TABLE_ROW: FUNC2("table-row"); break;
		case BOX_TABLE_CELL: FUNC2("table-cell"); break;
		}

		FUNC2(" em=%g x=%g y=%g w=%g b=%g\n", box->em, box->x, box->y, box->w, box->b);

		FUNC1(level);
		FUNC2("{\n");
		if (box->type == BOX_BLOCK) {
			FUNC1(level+1);
			FUNC2("margin=%g %g %g %g\n", box->margin[0], box->margin[1], box->margin[2], box->margin[3]);
		}
		if (box->is_first_flow) {
			FUNC1(level+1);
			FUNC2("is-first-flow\n");
		}
		if (box->list_item) {
			FUNC1(level+1);
			FUNC2("list=%d\n", box->list_item);
		}
		if (box->id) {
			FUNC1(level+1);
			FUNC2("id=%s\n", box->id);
		}
		if (box->href) {
			FUNC1(level+1);
			FUNC2("href=%s\n", box->href);
		}

		if (box->down)
			FUNC3(ctx, box->down, level + 1);
		if (box->flow_head)
			FUNC0(ctx, box->flow_head, level + 1);

		FUNC1(level);
		FUNC2("}\n");

		box = box->next;
	}
}