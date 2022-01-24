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
typedef  int /*<<< orphan*/ * HDC ;
typedef  scalar_t__ HBITMAP ;

/* Variables and functions */
 int /*<<< orphan*/  BLACK_PEN ; 
 int CLR_INVALID ; 
 scalar_t__ FUNC0 (int,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DC_PEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,char*) ; 

void FUNC15()
{
	HDC hScreenDC, hDC;
	HBITMAP hbmp, hbmpOld;

	// Test an incorrect DC
	FUNC13(ERROR_SUCCESS);
	FUNC14(FUNC12(0, FUNC9(0,0,0)) == CLR_INVALID, "\n");
	FUNC14(FUNC4() == ERROR_INVALID_PARAMETER, "\n");

	// Get the Screen DC
	hScreenDC = FUNC3(NULL);
	FUNC14(hScreenDC != 0, "GetDC failed, skipping tests\n");
	if (hScreenDC == NULL) return;

	// Test the screen DC
	FUNC12(hScreenDC, FUNC9(1,2,3));
	FUNC14(FUNC12(hScreenDC, FUNC9(4,5,6)) == FUNC9(1,2,3), "\n");

	// Create a new DC
	hDC = FUNC1(hScreenDC);
	FUNC10(0, hScreenDC);
	FUNC14(hDC != 0, "CreateCompatibleDC failed, skipping tests\n");
	if (!hDC) return;

	// Select the DC_PEN and check if the pen returned by a new call is DC_PEN
	FUNC11(hDC, FUNC6(DC_PEN));
	FUNC14(FUNC11(hDC, FUNC6(BLACK_PEN)) == FUNC6(DC_PEN), "\n");

	// Test an incorrect color, yes windows sets the color!
	FUNC12(hDC, 0x21123456);
	FUNC14(FUNC12(hDC, FUNC9(0,0,0)) == 0x21123456, "\n");

	// Test CLR_INVALID, it sets CLR_INVALID!
	FUNC12(hDC, CLR_INVALID);
	FUNC14(FUNC12(hDC, FUNC9(0,0,0)) == CLR_INVALID, "\n");

	hbmp = FUNC0(10, 10, 1, 32, NULL);
	FUNC14(hbmp != 0, "CreateBitmap failed, skipping tests\n");
	if (!hbmp) return;
	hbmpOld = FUNC11(hDC, hbmp);
#if 0 // this only works on 32 bpp screen resolution
	ok(hbmpOld != NULL, "\n");
	SelectObject(hDC, GetStockObject(DC_PEN));
	SetDCPenColor(hDC, 0x123456);
	MoveToEx(hDC, 0, 0, NULL);
	LineTo(hDC, 10, 0);
	ok(GetPixel(hDC, 5, 0) == 0x123456, "\n");
#endif

	// Delete the DC
	FUNC11(hDC, hbmpOld);
	FUNC2(hDC);
}