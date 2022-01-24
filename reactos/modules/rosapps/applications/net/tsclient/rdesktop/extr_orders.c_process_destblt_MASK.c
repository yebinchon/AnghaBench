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
struct TYPE_3__ {int /*<<< orphan*/  cy; int /*<<< orphan*/  cx; int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  opcode; } ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  int /*<<< orphan*/  RDPCLIENT ;
typedef  TYPE_1__ DESTBLT_ORDER ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(RDPCLIENT * This, STREAM s, DESTBLT_ORDER * os, uint32 present, BOOL delta)
{
	if (present & 0x01)
		FUNC3(s, &os->x, delta);

	if (present & 0x02)
		FUNC3(s, &os->y, delta);

	if (present & 0x04)
		FUNC3(s, &os->cx, delta);

	if (present & 0x08)
		FUNC3(s, &os->cy, delta);

	if (present & 0x10)
		FUNC2(s, os->opcode);

	FUNC0(("DESTBLT(op=0x%x,x=%d,y=%d,cx=%d,cy=%d)\n",
	       os->opcode, os->x, os->y, os->cx, os->cy));

#if 0
	ui_destblt(This, ROP2_S(os->opcode), os->x, os->y, os->cx, os->cy);
#else
	FUNC4(This, os->opcode, os->x, os->y, os->cx, os->cy);
#endif
}