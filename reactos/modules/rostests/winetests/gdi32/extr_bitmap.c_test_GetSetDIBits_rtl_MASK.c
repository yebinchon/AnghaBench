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
typedef  int /*<<< orphan*/  bits_1 ;
struct TYPE_5__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; int /*<<< orphan*/  biCompression; } ;
struct TYPE_6__ {TYPE_1__ bmiHeader; } ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBITMAP ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BITMAPINFOHEADER ;
typedef  TYPE_2__ BITMAPINFO ;

/* Variables and functions */
 int /*<<< orphan*/  BI_RGB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIB_RGB_COLORS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LAYOUT_LTR ; 
 int /*<<< orphan*/  LAYOUT_RTL ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

__attribute__((used)) static void FUNC15(void)
{
    HDC hdc, hdc_mem;
    HBITMAP bitmap, orig_bitmap;
    BITMAPINFO info;
    int ret;
    DWORD bits_1[8 * 8], bits_2[8 * 8];

    if(!&pSetLayout)
    {
        FUNC14("Don't have SetLayout\n");
        return;
    }

    hdc = FUNC4( NULL );
    hdc_mem = FUNC1( hdc );
    FUNC13( hdc_mem, LAYOUT_LTR );

    bitmap = FUNC0( hdc, 8, 8 );
    orig_bitmap = FUNC8( hdc_mem, bitmap );
    FUNC10( hdc_mem, 0, 0, FUNC6(0xff, 0, 0) );
    FUNC8( hdc_mem, orig_bitmap );

    info.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
    info.bmiHeader.biWidth = 8;
    info.bmiHeader.biHeight = 8;
    info.bmiHeader.biPlanes = 1;
    info.bmiHeader.biBitCount = 32;
    info.bmiHeader.biCompression = BI_RGB;

    /* First show that GetDIBits ignores the layout mode. */

    ret = FUNC5( hdc_mem, bitmap, 0, 8, bits_1, &info, DIB_RGB_COLORS );
    FUNC12(ret == 8, "got %d\n", ret);
    FUNC12(bits_1[56] == 0xff0000, "got %08x\n", bits_1[56]); /* check we have a red pixel */

    FUNC13( hdc_mem, LAYOUT_RTL );

    ret = FUNC5( hdc_mem, bitmap, 0, 8, bits_2, &info, DIB_RGB_COLORS );
    FUNC12(ret == 8, "got %d\n", ret);

    FUNC12(!FUNC11( bits_1, bits_2, sizeof(bits_1) ), "bits differ\n");

    /* Now to show that SetDIBits also ignores the mode, we perform a SetDIBits
       followed by a GetDIBits and show that the bits remain unchanged. */

    FUNC13( hdc_mem, LAYOUT_LTR );

    ret = FUNC9( hdc_mem, bitmap, 0, 8, bits_1, &info, DIB_RGB_COLORS );
    FUNC12(ret == 8, "got %d\n", ret);
    ret = FUNC5( hdc_mem, bitmap, 0, 8, bits_2, &info, DIB_RGB_COLORS );
    FUNC12(ret == 8, "got %d\n", ret);
    FUNC12(!FUNC11( bits_1, bits_2, sizeof(bits_1) ), "bits differ\n");

    FUNC13( hdc_mem, LAYOUT_RTL );

    ret = FUNC9( hdc_mem, bitmap, 0, 8, bits_1, &info, DIB_RGB_COLORS );
    FUNC12(ret == 8, "got %d\n", ret);
    ret = FUNC5( hdc_mem, bitmap, 0, 8, bits_2, &info, DIB_RGB_COLORS );
    FUNC12(ret == 8, "got %d\n", ret);
    FUNC12(!FUNC11( bits_1, bits_2, sizeof(bits_1) ), "bits differ\n");

    FUNC3( bitmap );
    FUNC2( hdc_mem );
    FUNC7( NULL, hdc );
}