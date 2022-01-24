#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bmih ;
typedef  int /*<<< orphan*/  bm ;
struct TYPE_9__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; scalar_t__ biSizeImage; void* biCompression; } ;
struct TYPE_10__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; TYPE_1__ bmiHeader; void* biCompression; } ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/ * HBITMAP ;
typedef  int DWORD ;
typedef  TYPE_2__ BITMAPINFOHEADER ;
typedef  TYPE_2__ BITMAPINFO ;

/* Variables and functions */
 int /*<<< orphan*/  BITSPIXEL ; 
 void* BI_RGB ; 
 int /*<<< orphan*/  CBM_INIT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIB_RGB_COLORS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,TYPE_2__*) ; 

__attribute__((used)) static void FUNC13(void)
{
    HDC hdc, hdcmem;
    BITMAPINFOHEADER bmih;
    BITMAPINFO bm;
    HBITMAP hbm, hbm_colour, hbm_old;
    INT screen_depth;
    DWORD pixel;

    hdc = FUNC5(0);
    screen_depth = FUNC7(hdc, BITSPIXEL);
    FUNC10(&bmih, 0, sizeof(bmih));
    bmih.biSize = sizeof(bmih);
    bmih.biWidth = 10;
    bmih.biHeight = 10;
    bmih.biPlanes = 1;
    bmih.biBitCount = 32;
    bmih.biCompression = BI_RGB;

    hbm = FUNC2(hdc, NULL, CBM_INIT, NULL, NULL, 0);
    FUNC11(hbm == NULL, "CreateDIBitmap should fail\n");
    hbm = FUNC2(hdc, NULL, 0, NULL, NULL, 0);
    FUNC11(hbm == NULL, "CreateDIBitmap should fail\n");

    /* First create an un-initialised bitmap.  The depth of the bitmap
       should match that of the hdc and not that supplied in bmih.
    */

    /* First try 32 bits */
    hbm = FUNC2(hdc, &bmih, 0, NULL, NULL, 0);
    FUNC11(hbm != NULL, "CreateDIBitmap failed\n");
    FUNC12(hbm, screen_depth, &bmih);
    FUNC4(hbm);
    
    /* Then 16 */
    bmih.biBitCount = 16;
    hbm = FUNC2(hdc, &bmih, 0, NULL, NULL, 0);
    FUNC11(hbm != NULL, "CreateDIBitmap failed\n");
    FUNC12(hbm, screen_depth, &bmih);
    FUNC4(hbm);

    /* Then 1 */
    bmih.biBitCount = 1;
    hbm = FUNC2(hdc, &bmih, 0, NULL, NULL, 0);
    FUNC11(hbm != NULL, "CreateDIBitmap failed\n");
    FUNC12(hbm, screen_depth, &bmih);
    FUNC4(hbm);

    /* Now with a monochrome dc we expect a monochrome bitmap */
    hdcmem = FUNC1(hdc);

    /* First try 32 bits */
    bmih.biBitCount = 32;
    hbm = FUNC2(hdcmem, &bmih, 0, NULL, NULL, 0);
    FUNC11(hbm != NULL, "CreateDIBitmap failed\n");
    FUNC12(hbm, 1, &bmih);
    FUNC4(hbm);
    
    /* Then 16 */
    bmih.biBitCount = 16;
    hbm = FUNC2(hdcmem, &bmih, 0, NULL, NULL, 0);
    FUNC11(hbm != NULL, "CreateDIBitmap failed\n");
    FUNC12(hbm, 1, &bmih);
    FUNC4(hbm);
    
    /* Then 1 */
    bmih.biBitCount = 1;
    hbm = FUNC2(hdcmem, &bmih, 0, NULL, NULL, 0);
    FUNC11(hbm != NULL, "CreateDIBitmap failed\n");
    FUNC12(hbm, 1, &bmih);
    FUNC4(hbm);

    /* Now select a polychrome bitmap into the dc and we expect
       screen_depth bitmaps again */
    hbm_colour = FUNC0(hdc, bmih.biWidth, bmih.biHeight);
    FUNC12(hbm_colour, screen_depth, &bmih);
    hbm_old = FUNC9(hdcmem, hbm_colour);

    /* First try 32 bits */
    bmih.biBitCount = 32;
    hbm = FUNC2(hdcmem, &bmih, 0, NULL, NULL, 0);
    FUNC11(hbm != NULL, "CreateDIBitmap failed\n");
    FUNC12(hbm, screen_depth, &bmih);
    FUNC4(hbm);
    
    /* Then 16 */
    bmih.biBitCount = 16;
    hbm = FUNC2(hdcmem, &bmih, 0, NULL, NULL, 0);
    FUNC11(hbm != NULL, "CreateDIBitmap failed\n");
    FUNC12(hbm, screen_depth, &bmih);
    FUNC4(hbm);
    
    /* Then 1 */
    bmih.biBitCount = 1;
    hbm = FUNC2(hdcmem, &bmih, 0, NULL, NULL, 0);
    FUNC11(hbm != NULL, "CreateDIBitmap failed\n");
    FUNC12(hbm, screen_depth, &bmih);
    FUNC4(hbm);

    FUNC9(hdcmem, hbm_old);
    FUNC4(hbm_colour);
    FUNC3(hdcmem);

    bmih.biBitCount = 32;
    hbm = FUNC2(0, &bmih, 0, NULL, NULL, 0);
    FUNC11(hbm != NULL, "CreateDIBitmap failed\n");
    FUNC12(hbm, 1, &bmih);
    FUNC4(hbm);

    /* Test how formats are converted */
    pixel = 0xffffffff;
    bmih.biBitCount = 1;
    bmih.biWidth = 1;
    bmih.biHeight = 1;

    FUNC10(&bm, 0, sizeof(bm));
    bm.bmiHeader.biSize = sizeof(bm.bmiHeader);
    bm.bmiHeader.biWidth = 1;
    bm.bmiHeader.biHeight = 1;
    bm.bmiHeader.biPlanes = 1;
    bm.bmiHeader.biBitCount= 24;
    bm.bmiHeader.biCompression= BI_RGB;
    bm.bmiHeader.biSizeImage = 0;
    hbm = FUNC2(hdc, &bmih, CBM_INIT, &pixel, &bm, DIB_RGB_COLORS);
    FUNC11(hbm != NULL, "CreateDIBitmap failed\n");

    pixel = 0xdeadbeef;
    bm.bmiHeader.biBitCount= 32;
    FUNC6(hdc, hbm, 0, 1, &pixel, &bm, DIB_RGB_COLORS);
    FUNC11(pixel == 0x00ffffff, "Reading a 32 bit pixel from a DDB returned %08x\n", pixel);
    FUNC4(hbm);

    FUNC8(0, hdc);
}