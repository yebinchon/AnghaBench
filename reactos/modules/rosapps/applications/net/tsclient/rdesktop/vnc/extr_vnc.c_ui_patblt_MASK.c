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
typedef  int /*<<< orphan*/  vncBuffer ;
typedef  int /*<<< orphan*/  uint8 ;
struct TYPE_3__ {int style; int /*<<< orphan*/  pattern; } ;
typedef  int /*<<< orphan*/  HGLYPH ;
typedef  TYPE_1__ BRUSH ;

/* Variables and functions */
#define  ROP2_COPY 129 
#define  ROP2_XOR 128 
 int /*<<< orphan*/  server ; 
 scalar_t__ FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC5 (int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int*,int*,int*,int*) ; 

void
FUNC10(uint8 opcode,
	  /* dest */ int x, int y, int cx, int cy,
	  /* brush */ BRUSH * brush, int bgcolour, int fgcolour)
{
	switch (brush->style)
	{
		case 0:	/* Solid */
			switch (opcode)
			{
				case ROP2_XOR:
					{
						int xx, yy;
						vncBuffer *fill = FUNC5(cx, cy, 8);
						for (yy = 0; yy < cy; yy++)
							for (xx = 0; xx < cx; xx++)
								FUNC6(fill, xx, yy, fgcolour);
						if (FUNC9(&x, &y, &cx, &cy))
							FUNC8(server, x, y, cx, cy, fill,
								       0, 0);
						break;
					}

				default:
					if (FUNC9(&x, &y, &cx, &cy))
						FUNC7(server, x, y, cx, cy, fgcolour);
			}
			break;

		case 3:	/* Pattern */
			{
				int xx, yy;
				vncBuffer *fill;
				fill = (vncBuffer *) FUNC0(8, 8, brush->pattern);

				for (yy = 0; yy < 8; yy++)
				{
					for (xx = 0; xx < 8; xx++)
					{
						FUNC6(fill, xx, yy,
							    FUNC4(fill, xx,
									yy) ? fgcolour : bgcolour);
					}
				}

				if (FUNC9(&x, &y, &cx, &cy))
				{
					switch (opcode)
					{
						case ROP2_COPY:
							FUNC3(server, x, y, cx, cy, fill,
									0, 0);
							break;
						case ROP2_XOR:
							FUNC8(server, x, y, cx, cy, fill,
								       0, 0);
							break;
						default:
							FUNC2("pattern blit (%d,%d) opcode=%d bg=%d fg=%d\n", x, y, opcode, bgcolour, fgcolour);
							FUNC3(server, x, y, cx, cy, fill,
									0, 0);
							break;
					}
				}

				FUNC1((HGLYPH) fill);
				break;

			}
		default:
			FUNC2("brush %d\n", brush->style);
	}
}