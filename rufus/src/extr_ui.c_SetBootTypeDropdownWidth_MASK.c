#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
struct TYPE_6__ {scalar_t__ left; scalar_t__ right; } ;
struct TYPE_5__ {scalar_t__ cx; } ;
typedef  TYPE_1__ SIZE ;
typedef  TYPE_2__ RECT ;
typedef  int /*<<< orphan*/  POINT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  scalar_t__ HFONT ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  CB_SETDROPPEDWIDTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_GETFONT ; 
 int /*<<< orphan*/  hBootType ; 
 int /*<<< orphan*/  hMainDialog ; 
 int /*<<< orphan*/ * image_path ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  short_image_path ; 

void FUNC9(void)
{
	HDC hDC;
	HFONT hFont;
	SIZE sz;
	RECT rc;

	if (image_path == NULL)
		return;
	// Set the maximum width of the dropdown according to the image selected
	FUNC2(hBootType, &rc);
	FUNC3(NULL, hMainDialog, (POINT*)&rc, 2);
	hDC = FUNC0(hBootType);
	hFont = (HFONT)FUNC6(hBootType, WM_GETFONT, 0, 0);
	FUNC4(hDC, hFont);
	FUNC1(hDC, short_image_path, &sz);
	FUNC8(hBootType, hDC);
	FUNC5(hBootType, CB_SETDROPPEDWIDTH, (WPARAM)FUNC7(sz.cx + 10, rc.right - rc.left), (LPARAM)0);
}