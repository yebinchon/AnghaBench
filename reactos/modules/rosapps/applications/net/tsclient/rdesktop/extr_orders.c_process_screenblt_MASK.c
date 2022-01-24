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
struct TYPE_3__ {int /*<<< orphan*/  srcy; int /*<<< orphan*/  srcx; int /*<<< orphan*/  cy; int /*<<< orphan*/  cx; int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  opcode; } ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  TYPE_1__ SCREENBLT_ORDER ;
typedef  int /*<<< orphan*/  RDPCLIENT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(RDPCLIENT * This, STREAM s, SCREENBLT_ORDER * os, uint32 present, BOOL delta)
{
	if (present & 0x0001)
		FUNC3(s, &os->x, delta);

	if (present & 0x0002)
		FUNC3(s, &os->y, delta);

	if (present & 0x0004)
		FUNC3(s, &os->cx, delta);

	if (present & 0x0008)
		FUNC3(s, &os->cy, delta);

	if (present & 0x0010)
		FUNC2(s, os->opcode);

	if (present & 0x0020)
		FUNC3(s, &os->srcx, delta);

	if (present & 0x0040)
		FUNC3(s, &os->srcy, delta);

	FUNC0(("SCREENBLT(op=0x%x,x=%d,y=%d,cx=%d,cy=%d,srcx=%d,srcy=%d)\n",
	       os->opcode, os->x, os->y, os->cx, os->cy, os->srcx, os->srcy));

#if 0
	ui_screenblt(This, ROP2_S(os->opcode), os->x, os->y, os->cx, os->cy, os->srcx, os->srcy);
#else
	FUNC4(This, os->opcode, os->x, os->y, os->cx, os->cy, os->srcx, os->srcy);
#endif
}