#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* text; } ;
struct TYPE_8__ {int type; double y; double x; double w; double h; struct TYPE_8__* next; scalar_t__ breaks_line; TYPE_2__ content; TYPE_4__* box; } ;
typedef  TYPE_3__ fz_html_flow ;
struct TYPE_9__ {double em; TYPE_1__* style; } ;
typedef  TYPE_4__ fz_html_box ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_6__ {scalar_t__ small_caps; int /*<<< orphan*/  font; } ;

/* Variables and functions */
#define  FLOW_ANCHOR 134 
#define  FLOW_BREAK 133 
#define  FLOW_IMAGE 132 
#define  FLOW_SBREAK 131 
#define  FLOW_SHYPHEN 130 
#define  FLOW_SPACE 129 
#define  FLOW_WORD 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static void
FUNC7(fz_context *ctx, fz_html_flow *flow, int level)
{
	fz_html_box *sbox = NULL;
	while (flow)
	{
		if (flow->box != sbox) {
			if (sbox) {
				FUNC5(level);
				FUNC6("}\n");
			}
			sbox = flow->box;
			FUNC5(level);
			FUNC6("span em=%g font='%s'", sbox->em, FUNC4(ctx, sbox->style->font));
			if (FUNC3(ctx, sbox->style->font))
				FUNC6(" serif");
			else
				FUNC6(" sans");
			if (FUNC2(ctx, sbox->style->font))
				FUNC6(" monospaced");
			if (FUNC0(ctx, sbox->style->font))
				FUNC6(" bold");
			if (FUNC1(ctx, sbox->style->font))
				FUNC6(" italic");
			if (sbox->style->small_caps)
				FUNC6(" small-caps");
			FUNC6("\n");
			FUNC5(level);
			FUNC6("{\n");
		}

		FUNC5(level+1);
		switch (flow->type) {
		case FLOW_WORD: FUNC6("word "); break;
		case FLOW_SPACE: FUNC6("space"); break;
		case FLOW_SBREAK: FUNC6("sbrk "); break;
		case FLOW_SHYPHEN: FUNC6("shy  "); break;
		case FLOW_BREAK: FUNC6("break"); break;
		case FLOW_IMAGE: FUNC6("image"); break;
		case FLOW_ANCHOR: FUNC6("anchor"); break;
		}
		FUNC6(" y=%g x=%g w=%g", flow->y, flow->x, flow->w);
		if (flow->type == FLOW_IMAGE)
			FUNC6(" h=%g", flow->h);
		if (flow->type == FLOW_WORD)
			FUNC6(" text='%s'", flow->content.text);
		FUNC6("\n");
		if (flow->breaks_line) {
			FUNC5(level+1);
			FUNC6("*\n");
		}

		flow = flow->next;
	}
	FUNC5(level);
	FUNC6("}\n");
}