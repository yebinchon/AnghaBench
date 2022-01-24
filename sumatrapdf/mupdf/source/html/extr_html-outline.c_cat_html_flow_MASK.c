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
struct TYPE_4__ {int /*<<< orphan*/  text; } ;
struct TYPE_5__ {int type; struct TYPE_5__* next; TYPE_1__ content; } ;
typedef  TYPE_2__ fz_html_flow ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_buffer ;

/* Variables and functions */
#define  FLOW_BREAK 130 
#define  FLOW_SPACE 129 
#define  FLOW_WORD 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(fz_context *ctx, fz_buffer *cat, fz_html_flow *flow)
{
	while (flow)
	{
		switch (flow->type)
		{
		case FLOW_WORD:
			FUNC1(ctx, cat, flow->content.text);
			break;
		case FLOW_SPACE:
		case FLOW_BREAK:
			FUNC0(ctx, cat, ' ');
			break;
		default:
			break;
		}
		flow = flow->next;
	}
}