#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  page; int /*<<< orphan*/  chapter; } ;
struct TYPE_11__ {scalar_t__ key; scalar_t__ mod; scalar_t__ plain; scalar_t__ right; scalar_t__ middle; scalar_t__ down; } ;

/* Variables and functions */
 int /*<<< orphan*/  BOTH ; 
 int /*<<< orphan*/  GLUT_ELAPSED_TIME ; 
 scalar_t__ KEY_ESCAPE ; 
 int /*<<< orphan*/  NW ; 
 int /*<<< orphan*/  R ; 
 int /*<<< orphan*/  annotate_w ; 
 int /*<<< orphan*/  ctx ; 
 scalar_t__ currenticc ; 
 int /*<<< orphan*/  currentpage ; 
 scalar_t__ currentseparations ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  doc ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__) ; 
 TYPE_2__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (TYPE_2__) ; 
 scalar_t__ FUNC12 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ oldicc ; 
 int /*<<< orphan*/  oldpage ; 
 scalar_t__ oldseparations ; 
 int /*<<< orphan*/  outline ; 
 scalar_t__ search_active ; 
 scalar_t__ search_dir ; 
 scalar_t__ search_hit_count ; 
 TYPE_2__ search_hit_page ; 
 int /*<<< orphan*/  search_hit_quads ; 
 int /*<<< orphan*/  search_needle ; 
 TYPE_2__ search_page ; 
 scalar_t__ showannotate ; 
 scalar_t__ showinfo ; 
 scalar_t__ showoutline ; 
 TYPE_1__ ui ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 

void FUNC20(void)
{
	if (search_active)
	{
		int start_time = FUNC9(GLUT_ELAPSED_TIME);

		if (ui.key == KEY_ESCAPE)
			search_active = 0;

		/* ignore events during search */
		ui.key = ui.mod = ui.plain = 0;
		ui.down = ui.middle = ui.right = 0;

		while (search_active && FUNC9(GLUT_ELAPSED_TIME) < start_time + 200)
		{
			search_hit_count = FUNC8(ctx, doc,
				search_page.chapter, search_page.page,
				search_needle,
				search_hit_quads, FUNC15(search_hit_quads));
			if (search_hit_count)
			{
				search_active = 0;
				search_hit_page = search_page;
				FUNC13(search_hit_page);
			}
			else
			{
				if (search_dir > 0)
				{
					if (FUNC12(search_page))
						search_active = 0;
					else
						search_page = FUNC6(ctx, doc, search_page);
				}
				else
				{
					if (FUNC11(search_page))
						search_active = 0;
					else
						search_page = FUNC7(ctx, doc, search_page);
				}
			}
		}

		/* keep searching later */
		if (search_active)
			FUNC10();
	}

	FUNC1();

	if (showoutline)
		FUNC4(outline);

	if (!FUNC5(oldpage, currentpage) || oldseparations != currentseparations || oldicc != currenticc)
	{
		FUNC14();
		FUNC19();
	}

	if (showannotate)
	{
		FUNC16(R, BOTH, NW, 0, 0);
		FUNC17(annotate_w, 0, 4, 4, 1);
		FUNC0();
		FUNC18();
	}

	FUNC2();

	if (showinfo)
		FUNC3();
}