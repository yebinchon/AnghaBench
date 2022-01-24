#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8 ;
typedef  int /*<<< orphan*/  XPoint ;
struct TYPE_10__ {int style; int* pattern; int /*<<< orphan*/  yorigin; int /*<<< orphan*/  xorigin; } ;
struct TYPE_8__ {int /*<<< orphan*/  gc; } ;
struct TYPE_9__ {TYPE_1__ xwin; int /*<<< orphan*/  display; } ;
typedef  TYPE_2__ RDPCLIENT ;
typedef  int /*<<< orphan*/  Pixmap ;
typedef  int /*<<< orphan*/  POINT ;
typedef  int /*<<< orphan*/  HGLYPH ;
typedef  TYPE_3__ BRUSH ;

/* Variables and functions */
#define  ALTERNATE 129 
 int /*<<< orphan*/  EvenOddRule ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FillOpaqueStippled ; 
 int /*<<< orphan*/  FillSolid ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
#define  WINDING 128 
 int /*<<< orphan*/  WindingRule ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hatch_patterns ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 

void
FUNC12(RDPCLIENT * This, uint8 opcode,
	   /* mode */ uint8 fillmode,
	   /* dest */ POINT * point, int npoints,
	   /* brush */ BRUSH * brush, int bgcolour, int fgcolour)
{
	uint8 style, i, ipattern[8];
	Pixmap fill;

	FUNC4(opcode);

	switch (fillmode)
	{
		case ALTERNATE:
			FUNC5(This->display, This->xwin.gc, EvenOddRule);
			break;
		case WINDING:
			FUNC5(This->display, This->xwin.gc, WindingRule);
			break;
		default:
			FUNC11("fill mode %d\n", fillmode);
	}

	if (brush)
		style = brush->style;
	else
		style = 0;

	switch (style)
	{
		case 0:	/* Solid */
			FUNC3(fgcolour);
			FUNC0((XPoint *) point, npoints);
			break;

		case 2:	/* Hatch */
			fill = (Pixmap) FUNC9(This, 8, 8,
							hatch_patterns + brush->pattern[0] * 8);
			FUNC3(fgcolour);
			FUNC2(bgcolour);
			FUNC6(This->display, This->xwin.gc, FillOpaqueStippled);
			FUNC7(This->display, This->xwin.gc, fill);
			FUNC8(This->display, This->xwin.gc, brush->xorigin, brush->yorigin);
			FUNC0((XPoint *) point, npoints);
			FUNC6(This->display, This->xwin.gc, FillSolid);
			FUNC8(This->display, This->xwin.gc, 0, 0);
			FUNC10(This, (HGLYPH) fill);
			break;

		case 3:	/* Pattern */
			for (i = 0; i != 8; i++)
				ipattern[7 - i] = brush->pattern[i];
			fill = (Pixmap) FUNC9(This, 8, 8, ipattern);
			FUNC3(bgcolour);
			FUNC2(fgcolour);
			FUNC6(This->display, This->xwin.gc, FillOpaqueStippled);
			FUNC7(This->display, This->xwin.gc, fill);
			FUNC8(This->display, This->xwin.gc, brush->xorigin, brush->yorigin);
			FUNC0((XPoint *) point, npoints);
			FUNC6(This->display, This->xwin.gc, FillSolid);
			FUNC8(This->display, This->xwin.gc, 0, 0);
			FUNC10(This, (HGLYPH) fill);
			break;

		default:
			FUNC11("brush %d\n", brush->style);
	}

	FUNC1(opcode);
}