#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  fz_bookmark ;

/* Variables and functions */
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  currentpage ; 
 int /*<<< orphan*/  doc ; 
 scalar_t__ future_count ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ history_count ; 
 int layout_em ; 
 int /*<<< orphan*/  layout_h ; 
 int /*<<< orphan*/  layout_w ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(void)
{
	if (layout_em < 6) layout_em = 6;
	if (layout_em > 36) layout_em = 36;
	if (FUNC0(ctx, doc))
	{
		fz_bookmark mark = FUNC3(ctx, doc, currentpage);
		FUNC1(ctx, doc, layout_w, layout_h, layout_em);
		currentpage = FUNC2(ctx, doc, mark);
		history_count = 0;
		future_count = 0;

		FUNC4();
		FUNC5();
		FUNC6();
	}
}