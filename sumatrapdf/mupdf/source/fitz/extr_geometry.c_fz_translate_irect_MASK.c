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
struct TYPE_6__ {void* y1; void* x1; void* y0; void* x0; } ;
typedef  TYPE_1__ fz_irect ;

/* Variables and functions */
 void* FUNC0 (int,void*,int) ; 
 scalar_t__ FUNC1 (TYPE_1__) ; 
 scalar_t__ FUNC2 (TYPE_1__) ; 

fz_irect
FUNC3(fz_irect a, int xoff, int yoff)
{
	int t;

	if (FUNC1(a)) return a;
	if (FUNC2(a)) return a;
	a.x0 = FUNC0(t, a.x0, xoff);
	a.y0 = FUNC0(t, a.y0, yoff);
	a.x1 = FUNC0(t, a.x1, xoff);
	a.y1 = FUNC0(t, a.y1, yoff);
	return a;
}