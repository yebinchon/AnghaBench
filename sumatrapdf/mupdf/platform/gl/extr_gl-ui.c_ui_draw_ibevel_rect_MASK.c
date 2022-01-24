#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ y1; scalar_t__ x1; scalar_t__ y0; scalar_t__ x0; } ;
typedef  TYPE_1__ fz_irect ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__,int) ; 

void FUNC3(fz_irect area, unsigned int fill, int depressed)
{
	FUNC2(area, depressed);
	FUNC0(fill);
	FUNC1(area.x0+2, area.y0+2, area.x1-2, area.y1-2);
}