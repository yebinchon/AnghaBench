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
typedef  int /*<<< orphan*/  fz_location ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  currentpage ; 
 int /*<<< orphan*/  doc ; 
 int /*<<< orphan*/  draw_page_ctm ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC2 (float,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  scroll_x ; 
 int /*<<< orphan*/  scroll_y ; 

__attribute__((used)) static void FUNC4(fz_location loc, float x, float y)
{
	fz_point p = FUNC2(x, y, draw_page_ctm);
	FUNC0();
	FUNC3();
	currentpage = FUNC1(ctx, doc, loc);
	scroll_x = p.x;
	scroll_y = p.y;
	FUNC3();
}