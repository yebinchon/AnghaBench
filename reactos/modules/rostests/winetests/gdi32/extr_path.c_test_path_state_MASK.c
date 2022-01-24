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
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_4__ {int biSize; int biHeight; int biWidth; int biBitCount; int biPlanes; int /*<<< orphan*/  biCompression; } ;
struct TYPE_5__ {TYPE_1__ bmiHeader; } ;
typedef  int /*<<< orphan*/  RGBQUAD ;
typedef  scalar_t__ HRGN ;
typedef  int /*<<< orphan*/  HDC ;
typedef  scalar_t__ HBITMAP ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int BOOL ;
typedef  TYPE_2__ BITMAPINFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BI_RGB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIB_RGB_COLORS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int ERROR_CAN_NOT_COMPLETE ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 () ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RGN_OR ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC25 (int,char*,...) ; 

__attribute__((used)) static void FUNC26(void)
{
    BYTE buffer[sizeof(BITMAPINFO) + 256 * sizeof(RGBQUAD)];
    BITMAPINFO *bi = (BITMAPINFO *)buffer;
    HDC hdc;
    HRGN rgn;
    HBITMAP orig, dib;
    void *bits;
    BOOL ret;

    hdc = FUNC3( 0 );
    FUNC24( buffer, 0, sizeof(buffer) );
    bi->bmiHeader.biSize = sizeof(bi->bmiHeader);
    bi->bmiHeader.biHeight = 256;
    bi->bmiHeader.biWidth = 256;
    bi->bmiHeader.biBitCount = 32;
    bi->bmiHeader.biPlanes = 1;
    bi->bmiHeader.biCompression = BI_RGB;
    dib = FUNC4( 0, bi, DIB_RGB_COLORS, (void**)&bits, NULL, 0 );
    orig = FUNC18( hdc, dib );

    FUNC1( hdc );
    FUNC12( hdc, 100, 100 );
    ret = FUNC22( hdc );
    FUNC25( !ret, "WidenPath succeeded\n" );

    /* selecting another bitmap doesn't affect the path */
    FUNC18( hdc, orig );
    ret = FUNC22( hdc );
    FUNC25( !ret, "WidenPath succeeded\n" );

    FUNC18( hdc, dib );
    ret = FUNC22( hdc );
    FUNC25( !ret, "WidenPath succeeded\n" );

    ret = FUNC7( hdc );
    FUNC25( ret, "EndPath failed error %u\n", FUNC10() );
    ret = FUNC22( hdc );
    FUNC25( ret, "WidenPath failed error %u\n", FUNC10() );

    FUNC18( hdc, orig );
    ret = FUNC22( hdc );
    FUNC25( ret, "WidenPath failed error %u\n", FUNC10() );

    FUNC1( hdc );
    FUNC12( hdc, 100, 100 );
    ret = FUNC22( hdc );
    FUNC25( !ret, "WidenPath succeeded\n" );
    FUNC16( hdc );
    FUNC18( hdc, dib );
    ret = FUNC7( hdc );
    FUNC25( ret, "EndPath failed error %u\n", FUNC10() );
    ret = FUNC22( hdc );
    FUNC25( ret, "WidenPath failed error %u\n", FUNC10() );

    /* path should be open again after RestoreDC */
    FUNC15( hdc, -1  );
    ret = FUNC22( hdc );
    FUNC25( !ret, "WidenPath succeeded\n" );
    ret = FUNC7( hdc );
    FUNC25( ret, "EndPath failed error %u\n", FUNC10() );

    FUNC16( hdc );
    FUNC1( hdc );
    FUNC15( hdc, -1  );
    ret = FUNC22( hdc );
    FUNC25( ret, "WidenPath failed error %u\n", FUNC10() );

    /* test all functions with no path at all */
    FUNC0( hdc );
    FUNC19( 0xdeadbeef );
    ret = FUNC22( hdc );
    FUNC25( !ret, "WidenPath succeeded\n" );
    FUNC25( FUNC10() == ERROR_CAN_NOT_COMPLETE || FUNC23(FUNC10() == 0xdeadbeef),
        "wrong error %u\n", FUNC10() );

    FUNC19( 0xdeadbeef );
    ret = FUNC9( hdc );
    FUNC25( !ret, "FlattenPath succeeded\n" );
    FUNC25( FUNC10() == ERROR_CAN_NOT_COMPLETE || FUNC23(FUNC10() == 0xdeadbeef),
        "wrong error %u\n", FUNC10() );

    FUNC19( 0xdeadbeef );
    ret = FUNC21( hdc );
    FUNC25( !ret, "StrokePath succeeded\n" );
    FUNC25( FUNC10() == ERROR_CAN_NOT_COMPLETE || FUNC23(FUNC10() == 0xdeadbeef),
        "wrong error %u\n", FUNC10() );

    FUNC19( 0xdeadbeef );
    ret = FUNC8( hdc );
    FUNC25( !ret, "FillPath succeeded\n" );
    FUNC25( FUNC10() == ERROR_CAN_NOT_COMPLETE || FUNC23(FUNC10() == 0xdeadbeef),
        "wrong error %u\n", FUNC10() );

    FUNC19( 0xdeadbeef );
    ret = FUNC20( hdc );
    FUNC25( !ret, "StrokeAndFillPath succeeded\n" );
    FUNC25( FUNC10() == ERROR_CAN_NOT_COMPLETE || FUNC23(FUNC10() == 0xdeadbeef),
        "wrong error %u\n", FUNC10() );

    FUNC19( 0xdeadbeef );
    ret = FUNC17( hdc, RGN_OR );
    FUNC25( !ret, "SelectClipPath succeeded\n" );
    FUNC25( FUNC10() == ERROR_CAN_NOT_COMPLETE || FUNC23(FUNC10() == 0xdeadbeef),
        "wrong error %u\n", FUNC10() );

    FUNC19( 0xdeadbeef );
    rgn = FUNC13( hdc );
    FUNC25( !rgn, "PathToRegion succeeded\n" );
    FUNC25( FUNC10() == ERROR_CAN_NOT_COMPLETE || FUNC23(FUNC10() == 0xdeadbeef),
        "wrong error %u\n", FUNC10() );

    FUNC19( 0xdeadbeef );
    ret = FUNC7( hdc );
    FUNC25( !ret, "SelectClipPath succeeded\n" );
    FUNC25( FUNC10() == ERROR_CAN_NOT_COMPLETE || FUNC23(FUNC10() == 0xdeadbeef),
        "wrong error %u\n", FUNC10() );

    FUNC19( 0xdeadbeef );
    ret = FUNC2( hdc );
    FUNC25( !ret, "CloseFigure succeeded\n" );
    FUNC25( FUNC10() == ERROR_CAN_NOT_COMPLETE || FUNC23(FUNC10() == 0xdeadbeef),
        "wrong error %u\n", FUNC10() );

    /* test all functions with an open path */
    FUNC0( hdc );
    FUNC1( hdc );
    FUNC19( 0xdeadbeef );
    ret = FUNC22( hdc );
    FUNC25( !ret, "WidenPath succeeded\n" );
    FUNC25( FUNC10() == ERROR_CAN_NOT_COMPLETE || FUNC23(FUNC10() == 0xdeadbeef),
        "wrong error %u\n", FUNC10() );

    FUNC0( hdc );
    FUNC1( hdc );
    FUNC19( 0xdeadbeef );
    ret = FUNC9( hdc );
    FUNC25( !ret, "FlattenPath succeeded\n" );
    FUNC25( FUNC10() == ERROR_CAN_NOT_COMPLETE || FUNC23(FUNC10() == 0xdeadbeef),
        "wrong error %u\n", FUNC10() );

    FUNC0( hdc );
    FUNC1( hdc );
    FUNC19( 0xdeadbeef );
    ret = FUNC21( hdc );
    FUNC25( !ret, "StrokePath succeeded\n" );
    FUNC25( FUNC10() == ERROR_CAN_NOT_COMPLETE || FUNC23(FUNC10() == 0xdeadbeef),
        "wrong error %u\n", FUNC10() );

    FUNC0( hdc );
    FUNC1( hdc );
    FUNC19( 0xdeadbeef );
    ret = FUNC8( hdc );
    FUNC25( !ret, "FillPath succeeded\n" );
    FUNC25( FUNC10() == ERROR_CAN_NOT_COMPLETE || FUNC23(FUNC10() == 0xdeadbeef),
        "wrong error %u\n", FUNC10() );

    FUNC0( hdc );
    FUNC1( hdc );
    FUNC19( 0xdeadbeef );
    ret = FUNC20( hdc );
    FUNC25( !ret, "StrokeAndFillPath succeeded\n" );
    FUNC25( FUNC10() == ERROR_CAN_NOT_COMPLETE || FUNC23(FUNC10() == 0xdeadbeef),
        "wrong error %u\n", FUNC10() );

    FUNC0( hdc );
    FUNC1( hdc );
    FUNC14( hdc, 1, 1, 10, 10 );  /* region needs some contents */
    FUNC19( 0xdeadbeef );
    ret = FUNC17( hdc, RGN_OR );
    FUNC25( !ret, "SelectClipPath succeeded\n" );
    FUNC25( FUNC10() == ERROR_CAN_NOT_COMPLETE || FUNC23(FUNC10() == 0xdeadbeef),
        "wrong error %u\n", FUNC10() );

    FUNC0( hdc );
    FUNC1( hdc );
    FUNC14( hdc, 1, 1, 10, 10 );  /* region needs some contents */
    FUNC19( 0xdeadbeef );
    rgn = FUNC13( hdc );
    FUNC25( !rgn, "PathToRegion succeeded\n" );
    FUNC25( FUNC10() == ERROR_CAN_NOT_COMPLETE || FUNC23(FUNC10() == 0xdeadbeef),
        "wrong error %u\n", FUNC10() );

    FUNC0( hdc );
    FUNC1( hdc );
    ret = FUNC2( hdc );
    FUNC25( ret, "CloseFigure failed\n" );

    /* test all functions with a closed path */
    FUNC0( hdc );
    FUNC1( hdc );
    FUNC7( hdc );
    ret = FUNC22( hdc );
    FUNC25( ret, "WidenPath failed\n" );
    FUNC25( FUNC11( hdc, NULL, NULL, 0 ) != -1, "path deleted\n" );

    FUNC0( hdc );
    FUNC1( hdc );
    FUNC7( hdc );
    ret = FUNC9( hdc );
    FUNC25( ret, "FlattenPath failed\n" );
    FUNC25( FUNC11( hdc, NULL, NULL, 0 ) != -1, "path deleted\n" );

    FUNC0( hdc );
    FUNC1( hdc );
    FUNC7( hdc );
    ret = FUNC21( hdc );
    FUNC25( ret, "StrokePath failed\n" );
    FUNC25( FUNC11( hdc, NULL, NULL, 0 ) == -1, "path not deleted\n" );

    FUNC1( hdc );
    FUNC7( hdc );
    ret = FUNC8( hdc );
    FUNC25( ret, "FillPath failed\n" );
    FUNC25( FUNC11( hdc, NULL, NULL, 0 ) == -1, "path not deleted\n" );

    FUNC1( hdc );
    FUNC7( hdc );
    ret = FUNC20( hdc );
    FUNC25( ret, "StrokeAndFillPath failed\n" );
    FUNC25( FUNC11( hdc, NULL, NULL, 0 ) == -1, "path not deleted\n" );

    FUNC1( hdc );
    FUNC14( hdc, 1, 1, 10, 10 );  /* region needs some contents */
    FUNC7( hdc );
    ret = FUNC17( hdc, RGN_OR );
    FUNC25( ret, "SelectClipPath failed\n" );
    FUNC25( FUNC11( hdc, NULL, NULL, 0 ) == -1, "path not deleted\n" );

    FUNC1( hdc );
    FUNC7( hdc );
    FUNC19( 0xdeadbeef );
    ret = FUNC17( hdc, RGN_OR );
    FUNC25( !ret, "SelectClipPath succeeded on empty path\n" );
    FUNC25( FUNC10() == 0xdeadbeef, "wrong error %u\n", FUNC10() );
    FUNC25( FUNC11( hdc, NULL, NULL, 0 ) == -1, "path not deleted\n" );

    FUNC1( hdc );
    FUNC14( hdc, 1, 1, 10, 10 );  /* region needs some contents */
    FUNC7( hdc );
    rgn = FUNC13( hdc );
    FUNC25( rgn != 0, "PathToRegion failed\n" );
    FUNC6( rgn );
    FUNC25( FUNC11( hdc, NULL, NULL, 0 ) == -1, "path not deleted\n" );

    FUNC1( hdc );
    FUNC7( hdc );
    FUNC19( 0xdeadbeef );
    rgn = FUNC13( hdc );
    FUNC25( !rgn, "PathToRegion succeeded on empty path\n" );
    FUNC25( FUNC10() == 0xdeadbeef, "wrong error %u\n", FUNC10() );
    FUNC6( rgn );
    FUNC25( FUNC11( hdc, NULL, NULL, 0 ) == -1, "path not deleted\n" );

    FUNC1( hdc );
    FUNC7( hdc );
    FUNC19( 0xdeadbeef );
    ret = FUNC2( hdc );
    FUNC25( !ret, "CloseFigure succeeded\n" );
    FUNC25( FUNC10() == ERROR_CAN_NOT_COMPLETE || FUNC23(FUNC10() == 0xdeadbeef),
        "wrong error %u\n", FUNC10() );

    FUNC0( hdc );
    FUNC1( hdc );
    FUNC7( hdc );
    FUNC19( 0xdeadbeef );
    ret = FUNC7( hdc );
    FUNC25( !ret, "EndPath succeeded\n" );
    FUNC25( FUNC10() == ERROR_CAN_NOT_COMPLETE || FUNC23(FUNC10() == 0xdeadbeef),
        "wrong error %u\n", FUNC10() );

    FUNC5( hdc );
    FUNC6( dib );
}