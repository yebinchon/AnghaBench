#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {void* y1; void* x1; void* y0; void* x0; } ;
typedef  TYPE_1__ fz_rect ;
struct TYPE_9__ {void* x; void* y; } ;
typedef  TYPE_2__ fz_point ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__,float) ; 
 void* FUNC1 (void*,void*) ; 
 void* FUNC2 (void*,void*) ; 
 TYPE_1__ FUNC3 (TYPE_1__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(fz_rect *rect, const fz_point quad[4], float lw)
{
	fz_rect qbox;
	qbox.x0 = FUNC2(FUNC2(quad[0].x, quad[1].x), FUNC2(quad[2].x, quad[3].x));
	qbox.y0 = FUNC2(FUNC2(quad[0].y, quad[1].y), FUNC2(quad[2].y, quad[3].y));
	qbox.x1 = FUNC1(FUNC1(quad[0].x, quad[1].x), FUNC1(quad[2].x, quad[3].x));
	qbox.y1 = FUNC1(FUNC1(quad[0].y, quad[1].y), FUNC1(quad[2].y, quad[3].y));
	*rect = FUNC3(*rect, FUNC0(qbox, lw));
}