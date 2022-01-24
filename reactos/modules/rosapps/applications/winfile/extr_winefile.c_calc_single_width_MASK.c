#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int cx; } ;
struct TYPE_13__ {TYPE_2__ spaceSize; int /*<<< orphan*/  hfont; } ;
struct TYPE_9__ {scalar_t__ bottom; scalar_t__ right; scalar_t__ top; scalar_t__ left; } ;
struct TYPE_12__ {TYPE_1__ rcItem; int /*<<< orphan*/  hDC; int /*<<< orphan*/  hwndItem; scalar_t__ itemState; scalar_t__ itemAction; scalar_t__ itemID; scalar_t__ CtlID; scalar_t__ CtlType; } ;
struct TYPE_11__ {int* widths; int* positions; int /*<<< orphan*/  hwnd; } ;
typedef  TYPE_3__ Pane ;
typedef  int /*<<< orphan*/  HFONT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  Entry ;
typedef  TYPE_4__ DRAWITEMSTRUCT ;

/* Variables and functions */
 int COLUMNS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_8__ Globals ; 
 int IMAGE_WIDTH ; 
 int /*<<< orphan*/  LB_GETCOUNT ; 
 int /*<<< orphan*/  LB_GETITEMDATA ; 
 int /*<<< orphan*/  LB_SETHORIZONTALEXTENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC5(Pane* pane, int col)
{
	HFONT hfontOld;
	int x, cx;
	int entries = FUNC3(pane->hwnd, LB_GETCOUNT, 0, 0);
	int cnt;
	HDC hdc;

	pane->widths[col] = 0;

	hdc = FUNC0(pane->hwnd);
	hfontOld = FUNC2(hdc, Globals.hfont);

	for(cnt=0; cnt<entries; cnt++) {
		Entry* entry = (Entry*)FUNC3(pane->hwnd, LB_GETITEMDATA, cnt, 0);
		DRAWITEMSTRUCT dis;

		dis.CtlType		  = 0;
		dis.CtlID		  = 0;
		dis.itemID		  = 0;
		dis.itemAction	  = 0;
		dis.itemState	  = 0;
		dis.hwndItem	  = pane->hwnd;
		dis.hDC			  = hdc;
		dis.rcItem.left	  = 0;
		dis.rcItem.top    = 0;
		dis.rcItem.right  = 0;
		dis.rcItem.bottom = 0;
		/*dis.itemData	  = 0; */

		FUNC4(pane, &dis, entry, col);
	}

	FUNC2(hdc, hfontOld);
	FUNC1(pane->hwnd, hdc);

	cx = pane->widths[col];

	if (cx) {
		cx += 3*Globals.spaceSize.cx;

		if (cx < IMAGE_WIDTH)
			cx = IMAGE_WIDTH;
	}

	pane->widths[col] = cx;

	x = pane->positions[col] + cx;

	for(; col<COLUMNS-1; ) {
		pane->positions[++col] = x;
		x += pane->widths[col];
	}

	FUNC3(pane->hwnd, LB_SETHORIZONTALEXTENT, x, 0);
}