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
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fz_rect ;
typedef  int /*<<< orphan*/  fz_location ;
struct TYPE_7__ {struct TYPE_7__* next; int /*<<< orphan*/  uri; int /*<<< orphan*/  rect; } ;
typedef  TYPE_1__ fz_link ;
struct TYPE_8__ {int /*<<< orphan*/  y1; int /*<<< orphan*/  x1; int /*<<< orphan*/  y0; int /*<<< orphan*/  x0; } ;
typedef  TYPE_2__ fz_irect ;
struct TYPE_9__ {TYPE_1__* hot; scalar_t__ down; TYPE_1__* active; } ;

/* Variables and functions */
 int /*<<< orphan*/  GL_BLEND ; 
 int /*<<< orphan*/  GL_ONE ; 
 int /*<<< orphan*/  GL_ONE_MINUS_SRC_ALPHA ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  doc ; 
 TYPE_2__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*,float*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,float) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,float,float) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ showlinks ; 
 int /*<<< orphan*/  tooltip ; 
 TYPE_4__ ui ; 
 scalar_t__ FUNC11 (TYPE_2__) ; 
 int /*<<< orphan*/  view_page_ctm ; 

__attribute__((used)) static void FUNC12(fz_link *link)
{
	fz_rect bounds;
	fz_irect area;
	float link_x, link_y;

	FUNC4(GL_ONE, GL_ONE_MINUS_SRC_ALPHA);
	FUNC7(GL_BLEND);

	while (link)
	{
		bounds = link->rect;
		bounds = FUNC3(link->rect, view_page_ctm);
		area = FUNC0(bounds);

		if (FUNC11(area))
		{
			tooltip = link->uri;
			ui.hot = link;
			if (!ui.active && ui.down)
				ui.active = link;
		}

		if (ui.hot == link || showlinks)
		{
			if (ui.active == link && ui.hot == link)
				FUNC5(0, 0, 1, 0.4f);
			else if (ui.hot == link)
				FUNC5(0, 0, 1, 0.2f);
			else
				FUNC5(0, 0, 1, 0.1f);
			FUNC8(area.x0, area.y0, area.x1, area.y1);
		}

		if (ui.active == link && !ui.down)
		{
			if (ui.hot == link)
			{
				if (FUNC1(ctx, link->uri))
					FUNC10(link->uri);
				else
				{
					fz_location loc = FUNC2(ctx, doc, link->uri, &link_x, &link_y);
					FUNC9(loc, link_x, link_y);
				}
			}
		}

		link = link->next;
	}

	FUNC6(GL_BLEND);
}