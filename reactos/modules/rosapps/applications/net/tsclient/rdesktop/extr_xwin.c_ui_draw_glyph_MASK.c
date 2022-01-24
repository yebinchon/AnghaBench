#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  gc; } ;
struct TYPE_5__ {TYPE_1__ xwin; int /*<<< orphan*/  display; } ;
typedef  TYPE_2__ RDPCLIENT ;
typedef  int /*<<< orphan*/  Pixmap ;
typedef  scalar_t__ HGLYPH ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int) ; 
 int /*<<< orphan*/  FillOpaqueStippled ; 
 int /*<<< orphan*/  FillSolid ; 
 int /*<<< orphan*/  FillStippled ; 
 int MIX_TRANSPARENT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

void
FUNC6(RDPCLIENT * This, int mixmode,
	      /* dest */ int x, int y, int cx, int cy,
	      /* src */ HGLYPH glyph, int srcx, int srcy,
	      int bgcolour, int fgcolour)
{
	FUNC2(fgcolour);
	FUNC1(bgcolour);

	FUNC3(This->display, This->xwin.gc,
		      (mixmode == MIX_TRANSPARENT) ? FillStippled : FillOpaqueStippled);
	FUNC4(This->display, This->xwin.gc, (Pixmap) glyph);
	FUNC5(This->display, This->xwin.gc, x, y);

	FUNC0(x, y, cx, cy);

	FUNC3(This->display, This->xwin.gc, FillSolid);
}