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
typedef  int /*<<< orphan*/  vncBuffer ;
typedef  int /*<<< orphan*/  uint8 ;
typedef  scalar_t__ HBITMAP ;

/* Variables and functions */
#define  ROP2_AND 131 
#define  ROP2_COPY 130 
#define  ROP2_OR 129 
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  ROP2_XOR 128 
 int /*<<< orphan*/  server ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC6 (int*,int*,int*,int*) ; 

void
FUNC7(uint8 opcode,
	  /* dest */ int x, int y, int cx, int cy,
	  /* src */ HBITMAP src, int srcx, int srcy)
{
	int ox, oy;
	ox = x;
	oy = y;

	if (FUNC6(&x, &y, &cx, &cy))
	{
		//if we clipped top or left, we have to adjust srcx,srcy;
		srcx += x - ox;
		srcy += y - oy;
		switch (FUNC0(opcode))
		{
			case ROP2_OR:
				FUNC4(server, x, y, cx, cy, (vncBuffer *) src, srcx,
						 srcy, 0x0);
				break;
			case ROP2_XOR:
				FUNC5(server, x, y, cx, cy, (vncBuffer *) src, srcx, srcy);
				break;
			case ROP2_AND:
				FUNC2(server, x, y, cx, cy, (vncBuffer *) src, srcx, srcy);
				break;
			case ROP2_COPY:
				FUNC3(server, x, y, cx, cy, (vncBuffer *) src, srcx,
						srcy);
				break;
			default:
				FUNC1("ui_memblt: op%d %d,%d %dx%d\n", opcode, x, y, cx, cy);
				FUNC3(server, x, y, cx, cy, (vncBuffer *) src, srcx,
						srcy);
				break;
		}
	}
}