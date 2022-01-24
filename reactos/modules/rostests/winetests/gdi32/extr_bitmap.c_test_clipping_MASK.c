#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int biSize; int biWidth; int biHeight; int biPlanes; int /*<<< orphan*/  biCompression; int /*<<< orphan*/  biBitCount; } ;
struct TYPE_5__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_7__ {TYPE_2__ bmiHeader; TYPE_1__ member_0; } ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/ * HRGN ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/ * HBITMAP ;
typedef  int /*<<< orphan*/  BOOL ;
typedef  int /*<<< orphan*/  BITMAPINFOHEADER ;
typedef  TYPE_3__ BITMAPINFO ;

/* Variables and functions */
 int /*<<< orphan*/  BITSPIXEL ; 
 int /*<<< orphan*/  BI_RGB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIB_RGB_COLORS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SRCCOPY ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC10(void)
{
    HBITMAP bmpDst;
    HBITMAP bmpSrc;
    HRGN hRgn;
    LPVOID bits;
    BOOL result;

    HDC hdcDst = FUNC1( NULL );
    HDC hdcSrc = FUNC1( NULL );

    BITMAPINFO bmpinfo={{0}};
    bmpinfo.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
    bmpinfo.bmiHeader.biWidth = 100;
    bmpinfo.bmiHeader.biHeight = 100;
    bmpinfo.bmiHeader.biPlanes = 1;
    bmpinfo.bmiHeader.biBitCount = FUNC6( hdcDst, BITSPIXEL );
    bmpinfo.bmiHeader.biCompression = BI_RGB;

    bmpDst = FUNC2( hdcDst, &bmpinfo, DIB_RGB_COLORS, &bits, NULL, 0 );
    FUNC9(bmpDst != NULL, "Couldn't create destination bitmap\n");
    FUNC8( hdcDst, bmpDst );

    bmpSrc = FUNC2( hdcSrc, &bmpinfo, DIB_RGB_COLORS, &bits, NULL, 0 );
    FUNC9(bmpSrc != NULL, "Couldn't create source bitmap\n");
    FUNC8( hdcSrc, bmpSrc );

    result = FUNC0( hdcDst, 0, 0, 100, 100, hdcSrc, 100, 100, SRCCOPY );
    FUNC9(result, "BitBlt failed\n");

    hRgn = FUNC3( 0,0,0,0 );
    FUNC7( hdcDst, hRgn );

    result = FUNC0( hdcDst, 0, 0, 100, 100, hdcSrc, 0, 0, SRCCOPY );
    FUNC9(result, "BitBlt failed\n");

    FUNC5( bmpDst );
    FUNC5( bmpSrc );
    FUNC5( hRgn );
    FUNC4( hdcDst );
    FUNC4( hdcSrc );
}