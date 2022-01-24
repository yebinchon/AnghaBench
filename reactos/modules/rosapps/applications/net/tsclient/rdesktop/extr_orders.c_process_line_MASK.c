#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
struct TYPE_6__ {int /*<<< orphan*/  colour; } ;
struct TYPE_5__ {int opcode; TYPE_2__ pen; int /*<<< orphan*/  endy; int /*<<< orphan*/  endx; int /*<<< orphan*/  starty; int /*<<< orphan*/  startx; int /*<<< orphan*/  bgcolour; int /*<<< orphan*/  mixmode; } ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  int /*<<< orphan*/  RDPCLIENT ;
typedef  TYPE_1__ LINE_ORDER ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC8(RDPCLIENT * This, STREAM s, LINE_ORDER * os, uint32 present, BOOL delta)
{
	if (present & 0x0001)
		FUNC2(s, os->mixmode);

	if (present & 0x0002)
		FUNC5(s, &os->startx, delta);

	if (present & 0x0004)
		FUNC5(s, &os->starty, delta);

	if (present & 0x0008)
		FUNC5(s, &os->endx, delta);

	if (present & 0x0010)
		FUNC5(s, &os->endy, delta);

	if (present & 0x0020)
		FUNC4(s, &os->bgcolour);

	if (present & 0x0040)
		FUNC3(s, os->opcode);

	FUNC6(s, &os->pen, present >> 7);

	FUNC0(("LINE(op=0x%x,sx=%d,sy=%d,dx=%d,dy=%d,fg=0x%x)\n",
	       os->opcode, os->startx, os->starty, os->endx, os->endy, os->pen.colour));

	if (os->opcode < 0x01 || os->opcode > 0x10)
	{
		FUNC1("bad ROP2 0x%x\n", os->opcode);
		return;
	}

#if 0
	ui_line(This, os->opcode - 1, os->startx, os->starty, os->endx, os->endy, &os->pen);
#else
	FUNC7(This, os->opcode, os->startx, os->starty, os->endx, os->endy, &os->pen);
#endif
}