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
struct TYPE_3__ {scalar_t__ data; } ;
typedef  TYPE_1__ vncBuffer ;
typedef  int uint8 ;

/* Variables and functions */
 int /*<<< orphan*/  server ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int,int,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int,int,int,int) ; 

void
FUNC3(uint8 opcode,
	   /* dest */ int x, int y, int cx, int cy)
{
	int i;
	vncBuffer *buf;

	switch (opcode)
	{
		case 0:
		case 15:
			FUNC0(x, y, cx, cy, 0xff);
			break;
		case 5:	// invert
			buf = FUNC2(server, x, y, cx, cy);
			for (i = 0; i < cx * cy; i++)
				((char *) (buf->data))[i] = !((char *) (buf->data))[i];
			break;
		default:
			FUNC1("ui_destblt: opcode=%d %d,%d %dx%d\n", opcode, x, y, cx, cy);
	}
}