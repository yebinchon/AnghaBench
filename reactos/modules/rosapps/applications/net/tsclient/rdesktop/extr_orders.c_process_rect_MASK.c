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
typedef  int uint32 ;
struct TYPE_3__ {int colour; int /*<<< orphan*/  cy; int /*<<< orphan*/  cx; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  TYPE_1__ RECT_ORDER ;
typedef  int /*<<< orphan*/  RDPCLIENT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(RDPCLIENT * This, STREAM s, RECT_ORDER * os, uint32 present, BOOL delta)
{
	uint32 i;
	if (present & 0x01)
		FUNC2(s, &os->x, delta);

	if (present & 0x02)
		FUNC2(s, &os->y, delta);

	if (present & 0x04)
		FUNC2(s, &os->cx, delta);

	if (present & 0x08)
		FUNC2(s, &os->cy, delta);

	if (present & 0x10)
	{
		FUNC1(s, i);
		os->colour = (os->colour & 0xffffff00) | i;
	}

	if (present & 0x20)
	{
		FUNC1(s, i);
		os->colour = (os->colour & 0xffff00ff) | (i << 8);
	}

	if (present & 0x40)
	{
		FUNC1(s, i);
		os->colour = (os->colour & 0xff00ffff) | (i << 16);
	}

	FUNC0(("RECT(x=%d,y=%d,cx=%d,cy=%d,fg=0x%x)\n", os->x, os->y, os->cx, os->cy, os->colour));

	FUNC3(This, os->x, os->y, os->cx, os->cy, os->colour);
}