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
typedef  int /*<<< orphan*/  bits ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/ * HDC ;
typedef  int /*<<< orphan*/ * HBRUSH ;
typedef  int /*<<< orphan*/ * HBITMAP ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int COLORREF ;

/* Variables and functions */
 int /*<<< orphan*/  BLACK_BRUSH ; 
 int /*<<< orphan*/ * FUNC0 (int,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,...) ; 

__attribute__((used)) static void FUNC13(void)
{
    HDC hdc, hdcmem;
    DWORD bits[64];
    HBITMAP hbmp, oldhbmp;
    COLORREF col;
    HBRUSH old_brush;
    RECT r;

    /* fill bitmap data with white */
    FUNC11(bits, 0xff, sizeof(bits));

    hdc = FUNC5(0);
    FUNC12( hdc != NULL, "CreateDC rets %p\n", hdc);
    /* create a memory dc */
    hdcmem = FUNC1(hdc);
    FUNC12(hdcmem != NULL, "CreateCompatibleDC rets %p\n", hdcmem);
    /* test monochrome bitmap: should always work */
    hbmp = FUNC0(32, 32, 1, 1, bits);
    FUNC12(hbmp != NULL, "CreateBitmap returns %p\n", hbmp);
    oldhbmp = FUNC9(hdcmem, hbmp);
    FUNC12(oldhbmp != NULL, "SelectObject returned NULL\n"); /* a memdc always has a bitmap selected */
    col = FUNC6(hdcmem, 0, 0);
    FUNC12( col == 0xffffff, "GetPixel returned %08x, expected 0xffffff\n", col);

    /* select black brush */
    old_brush = FUNC9(hdcmem, FUNC7(BLACK_BRUSH));
    FUNC10(&r, 0, 0, 5, 5);
    FUNC4(hdcmem, &r, 0);
    FUNC9(hdcmem, old_brush);
    /* bitmap filled with last selected brush */
    col = FUNC6(hdcmem, 0, 0);
    FUNC12(col == 0, "GetPixel returned %08x, expected 0\n", col);

    FUNC9(hdcmem, oldhbmp);
    FUNC3(hbmp);
    FUNC2(hdcmem);
    FUNC8(0, hdc);
}