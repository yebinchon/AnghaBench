#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8 ;
typedef  int uint32 ;
struct TYPE_11__ {int /*<<< orphan*/  style; } ;
struct TYPE_10__ {void* y; void* x; } ;
struct TYPE_9__ {int opcode; int fillmode; int npoints; int datasize; int* data; int /*<<< orphan*/  fgcolour; int /*<<< orphan*/  bgcolour; TYPE_4__ brush; void* y; void* x; } ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  int /*<<< orphan*/  RDPCLIENT ;
typedef  TYPE_1__ POLYGON2_ORDER ;
typedef  TYPE_2__ POINT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC7 (int*,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int,TYPE_2__*,int,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(RDPCLIENT * This, STREAM s, POLYGON2_ORDER * os, uint32 present, BOOL delta)
{
	int index, data, next;
	uint8 flags = 0;
	POINT *points;

	if (present & 0x0001)
		FUNC9(s, &os->x, delta);

	if (present & 0x0002)
		FUNC9(s, &os->y, delta);

	if (present & 0x0004)
		FUNC3(s, os->opcode);

	if (present & 0x0008)
		FUNC3(s, os->fillmode);

	if (present & 0x0010)
		FUNC8(s, &os->bgcolour);

	if (present & 0x0020)
		FUNC8(s, &os->fgcolour);

	FUNC10(s, &os->brush, present >> 6);

	if (present & 0x0800)
		FUNC3(s, os->npoints);

	if (present & 0x1000)
	{
		FUNC3(s, os->datasize);
		FUNC4(s, os->data, os->datasize);
	}

	FUNC0(("POLYGON2(x=%d,y=%d,op=0x%x,fm=%d,bs=%d,bg=0x%x,fg=0x%x,n=%d,sz=%d)\n",
	       os->x, os->y, os->opcode, os->fillmode, os->brush.style, os->bgcolour, os->fgcolour,
	       os->npoints, os->datasize));

	FUNC0(("Data: "));

	for (index = 0; index < os->datasize; index++)
		FUNC0(("%02x ", os->data[index]));

	FUNC0(("\n"));

	if (os->opcode < 0x01 || os->opcode > 0x10)
	{
		FUNC1("bad ROP2 0x%x\n", os->opcode);
		return;
	}

	points = (POINT *) FUNC5((os->npoints + 1) * sizeof(POINT));

	if(points == NULL)
		return;

	FUNC6(points, 0, (os->npoints + 1) * sizeof(POINT));

	points[0].x = os->x;
	points[0].y = os->y;

	index = 0;
	data = ((os->npoints - 1) / 4) + 1;
	for (next = 1; (next <= os->npoints) && (next < 256) && (data < os->datasize); next++)
	{
		if ((next - 1) % 4 == 0)
			flags = os->data[index++];

		if (~flags & 0x80)
			points[next].x = FUNC7(os->data, &data);

		if (~flags & 0x40)
			points[next].y = FUNC7(os->data, &data);

		flags <<= 2;
	}

	if (next - 1 == os->npoints)
#if 0
		ui_polygon(This, os->opcode - 1, os->fillmode, points, os->npoints + 1,
			   &os->brush, os->bgcolour, os->fgcolour);
#else
		FUNC11(This, os->opcode, os->fillmode, points, os->npoints + 1,
			   &os->brush, os->bgcolour, os->fgcolour);
#endif
	else
		FUNC1("polygon2 parse error\n");

	FUNC2(points);
}