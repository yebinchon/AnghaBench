#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {float x0; float y0; float x1; float y1; } ;
typedef  TYPE_1__ fz_rect ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__) ; 
 scalar_t__ FUNC1 (TYPE_1__) ; 

fz_rect
FUNC2(fz_rect a, float xoff, float yoff)
{
	if (FUNC0(a)) return a;
	if (FUNC1(a)) return a;
	a.x0 += xoff;
	a.y0 += yoff;
	a.x1 += xoff;
	a.y1 += yoff;
	return a;
}