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
typedef  int uint8 ;
typedef  int /*<<< orphan*/  RDPCLIENT ;
typedef  int /*<<< orphan*/  HBITMAP ;
typedef  int /*<<< orphan*/  BRUSH ;

/* Variables and functions */
 int /*<<< orphan*/  ROP2_AND ; 
 int /*<<< orphan*/  ROP2_COPY ; 
 int /*<<< orphan*/  ROP2_NXOR ; 
 int /*<<< orphan*/  ROP2_XOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

void
FUNC3(RDPCLIENT * This, uint8 opcode,
	  /* dest */ int x, int y, int cx, int cy,
	  /* src */ HBITMAP src, int srcx, int srcy,
	  /* brush */ BRUSH * brush, int bgcolour, int fgcolour)
{
	/* This is potentially difficult to do in general. Until someone
	   comes up with a more efficient way of doing it I am using cases. */

	switch (opcode)
	{
		case 0x69:	/* PDSxxn */
			FUNC0(This, ROP2_XOR, x, y, cx, cy, src, srcx, srcy);
			FUNC1(This, ROP2_NXOR, x, y, cx, cy, brush, bgcolour, fgcolour);
			break;

		case 0xb8:	/* PSDPxax */
			FUNC1(This, ROP2_XOR, x, y, cx, cy, brush, bgcolour, fgcolour);
			FUNC0(This, ROP2_AND, x, y, cx, cy, src, srcx, srcy);
			FUNC1(This, ROP2_XOR, x, y, cx, cy, brush, bgcolour, fgcolour);
			break;

		case 0xc0:	/* PSa */
			FUNC0(This, ROP2_COPY, x, y, cx, cy, src, srcx, srcy);
			FUNC1(This, ROP2_AND, x, y, cx, cy, brush, bgcolour, fgcolour);
			break;

		default:
			FUNC2("triblt 0x%x\n", opcode);
			FUNC0(This, ROP2_COPY, x, y, cx, cy, src, srcx, srcy);
	}
}