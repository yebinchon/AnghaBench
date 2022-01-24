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
struct TYPE_3__ {void* y1; void* x1; void* y0; void* x0; } ;
typedef  TYPE_1__ fz_rect ;

/* Variables and functions */
 void* FUNC0 (void*,float) ; 
 void* FUNC1 (void*,float) ; 

__attribute__((used)) static void FUNC2(fz_rect *rect, float x, float y, float r)
{
	rect->x0 = FUNC1(rect->x0, x-r);
	rect->y0 = FUNC1(rect->y0, y-r);
	rect->x1 = FUNC0(rect->x1, x+r);
	rect->y1 = FUNC0(rect->y1, y+r);
}