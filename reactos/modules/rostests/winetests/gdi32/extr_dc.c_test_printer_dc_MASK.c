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
typedef  int /*<<< orphan*/ * HBITMAP ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  BITSPIXEL ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ CLR_INVALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ DT_RASDISPLAY ; 
 scalar_t__ DT_RASPRINTER ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SRCCOPY ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TECHNOLOGY ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC11 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static void FUNC15(void)
{
    HDC memdc, display_memdc, enhmf_dc;
    HBITMAP orig, bmp;
    DWORD ret;
    HDC hdc, hdc_200;

    hdc = FUNC11(100, FALSE);
    hdc_200 = FUNC11(200, FALSE);

    if (!hdc || !hdc_200) return;

    FUNC14( hdc, hdc_200, "printer dc", FUNC12(hdc) ? 2 : 1 );
    FUNC5( hdc_200 );

    hdc_200 = FUNC11(200, TRUE);
    FUNC14( hdc, hdc_200, "printer dc", FUNC12(hdc) ? 2 : 1 );
    FUNC5( hdc_200 );

    memdc = FUNC3( hdc );
    display_memdc = FUNC3( 0 );

    FUNC13( memdc != NULL, "CreateCompatibleDC failed for printer\n" );
    FUNC13( display_memdc != NULL, "CreateCompatibleDC failed for screen\n" );

    ret = FUNC8( hdc, TECHNOLOGY );
    FUNC13( ret == DT_RASPRINTER, "wrong type %u\n", ret );

    ret = FUNC8( memdc, TECHNOLOGY );
    FUNC13( ret == DT_RASPRINTER, "wrong type %u\n", ret );

    ret = FUNC8( display_memdc, TECHNOLOGY );
    FUNC13( ret == DT_RASDISPLAY, "wrong type %u\n", ret );

    bmp = FUNC2( 100, 100, 1, FUNC8( hdc, BITSPIXEL ), NULL );
    orig = FUNC10( memdc, bmp );
    FUNC13( orig != NULL, "SelectObject failed\n" );
    FUNC13( FUNC0( hdc, 10, 10, 20, 20, memdc, 0, 0, SRCCOPY ), "BitBlt failed\n" );

    FUNC14( memdc, hdc, "printer dc", 1 );

    FUNC13( !FUNC10( display_memdc, bmp ), "SelectObject succeeded\n" );
    FUNC10( memdc, orig );
    FUNC7( bmp );

    bmp = FUNC2( 100, 100, 1, 1, NULL );
    orig = FUNC10( display_memdc, bmp );
    FUNC13( orig != NULL, "SelectObject failed\n" );
    FUNC13( !FUNC10( memdc, bmp ), "SelectObject succeeded\n" );
    FUNC13( FUNC0( hdc, 10, 10, 20, 20, display_memdc, 0, 0, SRCCOPY ), "BitBlt failed\n" );
    FUNC13( FUNC0( memdc, 10, 10, 20, 20, display_memdc, 0, 0, SRCCOPY ), "BitBlt failed\n" );
    FUNC13( FUNC0( display_memdc, 10, 10, 20, 20, memdc, 0, 0, SRCCOPY ), "BitBlt failed\n" );

    ret = FUNC9( hdc, 0, 0 );
    FUNC13( ret == CLR_INVALID, "wrong pixel value %x\n", ret );

    enhmf_dc = FUNC4( hdc, NULL, NULL, NULL );
    FUNC13(enhmf_dc != 0, "CreateEnhMetaFileA failed\n");
    FUNC14( enhmf_dc, hdc, "enhmetafile printer dc", 1 );
    FUNC6( FUNC1( enhmf_dc ));

    enhmf_dc = FUNC4( hdc, NULL, NULL, NULL );
    FUNC13(enhmf_dc != 0, "CreateEnhMetaFileA failed\n");
    FUNC14( enhmf_dc, hdc, "enhmetafile printer dc", 1 );
    FUNC6( FUNC1( enhmf_dc ));

    FUNC5( memdc );
    FUNC5( display_memdc );
    FUNC5( hdc );
    FUNC7( bmp );
}