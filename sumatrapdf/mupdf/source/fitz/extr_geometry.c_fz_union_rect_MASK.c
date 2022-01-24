#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ x0; scalar_t__ y0; scalar_t__ x1; scalar_t__ y1; } ;
typedef  TYPE_1__ fz_rect ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__) ; 
 scalar_t__ FUNC1 (TYPE_1__) ; 

fz_rect
FUNC2(fz_rect a, fz_rect b)
{
	/* Check for empty box before infinite box */
	if (FUNC0(b)) return a;
	if (FUNC0(a)) return b;
	if (FUNC1(a)) return a;
	if (FUNC1(b)) return b;
	if (a.x0 > b.x0)
		a.x0 = b.x0;
	if (a.y0 > b.y0)
		a.y0 = b.y0;
	if (a.x1 < b.x1)
		a.x1 = b.x1;
	if (a.y1 < b.y1)
		a.y1 = b.y1;
	return a;
}