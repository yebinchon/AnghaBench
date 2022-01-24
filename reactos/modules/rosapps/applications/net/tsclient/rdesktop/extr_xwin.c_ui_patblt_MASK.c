#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8 ;
struct TYPE_12__ {scalar_t__ yoffset; scalar_t__ xoffset; int /*<<< orphan*/  wnd; } ;
struct TYPE_11__ {int style; int* pattern; int /*<<< orphan*/  yorigin; int /*<<< orphan*/  xorigin; } ;
struct TYPE_9__ {int /*<<< orphan*/  gc; int /*<<< orphan*/  backstore; } ;
struct TYPE_10__ {TYPE_1__ xwin; int /*<<< orphan*/  wnd; scalar_t__ ownbackstore; int /*<<< orphan*/  display; } ;
typedef  TYPE_2__ RDPCLIENT ;
typedef  int /*<<< orphan*/  Pixmap ;
typedef  int /*<<< orphan*/  HGLYPH ;
typedef  TYPE_3__ BRUSH ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int) ; 
 int /*<<< orphan*/  FillOpaqueStippled ; 
 int /*<<< orphan*/  FillSolid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int,int),int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hatch_patterns ; 
 TYPE_8__* sw ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 

void
FUNC13(RDPCLIENT * This, uint8 opcode,
	  /* dest */ int x, int y, int cx, int cy,
	  /* brush */ BRUSH * brush, int bgcolour, int fgcolour)
{
	Pixmap fill;
	uint8 i, ipattern[8];

	FUNC5(opcode);

	switch (brush->style)
	{
		case 0:	/* Solid */
			FUNC4(fgcolour);
			FUNC0(x, y, cx, cy);
			break;

		case 2:	/* Hatch */
			fill = (Pixmap) FUNC10(This, 8, 8,
							hatch_patterns + brush->pattern[0] * 8);
			FUNC4(fgcolour);
			FUNC3(bgcolour);
			FUNC7(This->display, This->xwin.gc, FillOpaqueStippled);
			FUNC8(This->display, This->xwin.gc, fill);
			FUNC9(This->display, This->xwin.gc, brush->xorigin, brush->yorigin);
			FUNC0(x, y, cx, cy);
			FUNC7(This->display, This->xwin.gc, FillSolid);
			FUNC9(This->display, This->xwin.gc, 0, 0);
			FUNC11(This, (HGLYPH) fill);
			break;

		case 3:	/* Pattern */
			for (i = 0; i != 8; i++)
				ipattern[7 - i] = brush->pattern[i];
			fill = (Pixmap) FUNC10(This, 8, 8, ipattern);
			FUNC4(bgcolour);
			FUNC3(fgcolour);
			FUNC7(This->display, This->xwin.gc, FillOpaqueStippled);
			FUNC8(This->display, This->xwin.gc, fill);
			FUNC9(This->display, This->xwin.gc, brush->xorigin, brush->yorigin);
			FUNC0(x, y, cx, cy);
			FUNC7(This->display, This->xwin.gc, FillSolid);
			FUNC9(This->display, This->xwin.gc, 0, 0);
			FUNC11(This, (HGLYPH) fill);
			break;

		default:
			FUNC12("brush %d\n", brush->style);
	}

	FUNC2(opcode);

	if (This->ownbackstore)
		FUNC6(This->display, This->xwin.backstore, This->wnd, This->xwin.gc, x, y, cx, cy, x, y);
	FUNC1(XCopyArea,
				(This->display, This->ownbackstore ? This->xwin.backstore : This->wnd, sw->wnd, This->xwin.gc,
				 x, y, cx, cy, x - sw->xoffset, y - sw->yoffset));
}