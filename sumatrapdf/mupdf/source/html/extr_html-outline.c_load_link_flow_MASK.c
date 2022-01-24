#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {float x0; int y0; float x1; scalar_t__ y1; } ;
typedef  TYPE_1__ fz_rect ;
struct TYPE_10__ {struct TYPE_10__* next; } ;
typedef  TYPE_2__ fz_link ;
struct TYPE_11__ {float y; float x; float w; scalar_t__ h; scalar_t__ type; struct TYPE_11__* next; int /*<<< orphan*/  box; } ;
typedef  TYPE_3__ fz_html_flow ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 scalar_t__ FLOW_IMAGE ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,TYPE_1__,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC7 (char const*) ; 

__attribute__((used)) static fz_link *FUNC8(fz_context *ctx, fz_html_flow *flow, fz_link *head, int page, float page_h, const char *dir, const char *file)
{
	fz_link *link;
	fz_html_flow *next;
	char path[2048];
	fz_rect bbox;
	const char *dest;
	const char *href;
	float end;

	while (flow)
	{
		href = FUNC0(flow->box);
		next = flow->next;
		if (href && (int)(flow->y / page_h) == page)
		{
			/* Coalesce contiguous flow boxes into one link node */
			end = flow->x + flow->w;
			while (next &&
					next->y == flow->y &&
					next->h == flow->h &&
					FUNC6(next->box, href))
			{
				end = next->x + next->w;
				next = next->next;
			}

			bbox.x0 = flow->x;
			bbox.y0 = flow->y - page * page_h;
			bbox.x1 = end;
			bbox.y1 = bbox.y0 + flow->h;
			if (flow->type != FLOW_IMAGE)
			{
				/* flow->y is the baseline, adjust bbox appropriately */
				bbox.y0 -= 0.8f * flow->h;
				bbox.y1 -= 0.8f * flow->h;
			}

			if (FUNC7(href))
			{
				if (href[0] == '#')
				{
					FUNC4(path, file, sizeof path);
					FUNC3(path, href, sizeof path);
				}
				else
				{
					FUNC4(path, dir, sizeof path);
					FUNC3(path, "/", sizeof path);
					FUNC3(path, href, sizeof path);
				}
				FUNC5(path);
				FUNC1(path);

				dest = path;
			}
			else
			{
				dest = href;
			}

			link = FUNC2(ctx, bbox, NULL, dest);
			link->next = head;
			head = link;
		}
		flow = next;
	}
	return head;
}