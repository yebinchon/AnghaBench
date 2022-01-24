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
struct TYPE_3__ {scalar_t__ y1; scalar_t__ x1; scalar_t__ x0; scalar_t__ y0; } ;
typedef  TYPE_1__ fz_irect ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 

void FUNC2(fz_irect area, unsigned ot, unsigned it, unsigned ib, unsigned ob)
{
	FUNC0(ot);
	FUNC1(area.x0, area.y0, area.x1-1, area.y0+1);
	FUNC1(area.x0, area.y0+1, area.x0+1, area.y1-1);
	FUNC0(ob);
	FUNC1(area.x1-1, area.y0, area.x1, area.y1);
	FUNC1(area.x0, area.y1-1, area.x1-1, area.y1);
	FUNC0(it);
	FUNC1(area.x0+1, area.y0+1, area.x1-2, area.y0+2);
	FUNC1(area.x0+1, area.y0+2, area.x0+2, area.y1-2);
	FUNC0(ib);
	FUNC1(area.x1-2, area.y0+1, area.x1-1, area.y1-1);
	FUNC1(area.x0+1, area.y1-2, area.x1-2, area.y1-1);
}