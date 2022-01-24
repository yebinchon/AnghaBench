#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;

/* Variables and functions */
 int /*<<< orphan*/  server ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int,int,int,int) ; 
 scalar_t__ FUNC1 (int*,int*,int*,int*) ; 

void
FUNC2(uint8 opcode,
	     /* dest */ int x, int y, int cx, int cy,
	     /* src */ int srcx, int srcy)
{
	int ox, oy;

	ox = x;
	oy = y;
	if (FUNC1(&x, &y, &cx, &cy))
	{
		//if we clipped top or left, we have to adjust srcx,srcy;
		srcx += x - ox;
		srcy += y - oy;
		FUNC0(server, x, y, cx, cy, srcx, srcy);
	}
}