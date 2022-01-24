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
typedef  scalar_t__ ULONG_PTR ;
typedef  int /*<<< orphan*/ * HRGN ;
typedef  int /*<<< orphan*/ * HDC ;

/* Variables and functions */
 int /*<<< orphan*/  CLIPRGN ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int ERROR ; 
 int ERROR_INVALID_HANDLE ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MM_ANISOTROPIC ; 
 int NULLREGION ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int SIMPLEREGION ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC12 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 

void FUNC14()
{
    HDC hdc;
    HRGN hrgn, hrgn2;
    //RECT rect;

    hdc = FUNC0(NULL);
    FUNC12(hdc != 0, "CreateCompatibleDC failed, skipping tests.\n");
    if (!hdc) return;

    hrgn2 = FUNC1(0, 0, 0, 0);

    /* Test NULL DC */
    FUNC8(0x12345);
    FUNC13(FUNC6(NULL, 0, 0), ERROR);
    FUNC13(FUNC4(), ERROR_INVALID_HANDLE);

    /* Test invalid DC */
    FUNC8(0x12345);
    FUNC13(FUNC6((HDC)(ULONG_PTR)0x12345, 0, 0), ERROR);
    FUNC12((FUNC4() == 0x12345) || (FUNC4() == ERROR_INVALID_HANDLE), "Expected 0x12345 or ERROR_INVALID_HANDLE, got %ld\n", FUNC4());
    FUNC8(0x12345);

    /* Test without a clip region set */
    FUNC8(0x12345);
    FUNC13(FUNC7(hdc, NULL), SIMPLEREGION);
    FUNC13(FUNC6(hdc, 0, 0), SIMPLEREGION);
    FUNC13(FUNC4(), 0x12345);
    FUNC8(0x12345);

    /* Set a clip region */
    hrgn = FUNC1(10, 10, 20, 30);
    FUNC13(FUNC7(hdc, hrgn), NULLREGION);
    FUNC2(hrgn);
    FUNC13(FUNC6(hdc, 10, 10), SIMPLEREGION);
    FUNC13(FUNC5(hdc, hrgn2, CLIPRGN), 1);
    hrgn = FUNC1(20, 20, 30, 40);
    FUNC13(FUNC3(hrgn, hrgn2), TRUE);

    /* Set different scaling */
    FUNC9(hdc, MM_ANISOTROPIC);
    FUNC13(FUNC10(hdc, 100, 100, NULL), 1);
    FUNC13(FUNC11(hdc, 200, 50, NULL), 1);
    FUNC13(FUNC6(hdc, 10, 10), SIMPLEREGION);
    FUNC13(FUNC5(hdc, hrgn2, CLIPRGN), 1);
    hrgn = FUNC1(25, 40, 35, 60);
    FUNC13(FUNC3(hrgn, hrgn2), TRUE);

#if 0
    /* Set different scaling */
    SetMapMode(hdc, MM_ANISOTROPIC);
    ok_int(SetViewportExtEx(hdc, 100, 100, NULL), 1);
    ok_int(SetWindowExtEx(hdc, 80, 350, NULL), 1);
    ok_int(OffsetClipRgn(hdc, 10, 10), SIMPLEREGION);
    ok_int(GetRandomRgn(hdc, hrgn2, CLIPRGN), 1);
    hrgn = CreateRectRgn(33, 23, 43, 43);
    ok_int(EqualRgn(hrgn, hrgn2), TRUE);
#endif

    FUNC13(FUNC4(), 0x12345);

}