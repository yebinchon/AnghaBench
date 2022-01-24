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
struct TYPE_3__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ fz_point ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  currentpage ; 
 int /*<<< orphan*/  doc ; 
 int /*<<< orphan*/  draw_page_ctm ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ FUNC3 (float,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  scroll_x ; 
 int /*<<< orphan*/  scroll_y ; 

__attribute__((used)) static void FUNC5(int newpage, float x, float y)
{
	fz_point p = FUNC3(x, y, draw_page_ctm);
	FUNC0();
	FUNC4();
	currentpage = FUNC2(ctx, doc, newpage);
	currentpage = FUNC1(ctx, doc, currentpage);
	scroll_x = p.x;
	scroll_y = p.y;
	FUNC4();
}