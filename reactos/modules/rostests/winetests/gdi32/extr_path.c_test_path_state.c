
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int buffer ;
struct TYPE_4__ {int biSize; int biHeight; int biWidth; int biBitCount; int biPlanes; int biCompression; } ;
struct TYPE_5__ {TYPE_1__ bmiHeader; } ;
typedef int RGBQUAD ;
typedef scalar_t__ HRGN ;
typedef int HDC ;
typedef scalar_t__ HBITMAP ;
typedef int BYTE ;
typedef int BOOL ;
typedef TYPE_2__ BITMAPINFO ;


 int AbortPath (int ) ;
 int BI_RGB ;
 int BeginPath (int ) ;
 int CloseFigure (int ) ;
 int CreateCompatibleDC (int ) ;
 scalar_t__ CreateDIBSection (int ,TYPE_2__*,int ,void**,int *,int ) ;
 int DIB_RGB_COLORS ;
 int DeleteDC (int ) ;
 int DeleteObject (scalar_t__) ;
 int ERROR_CAN_NOT_COMPLETE ;
 int EndPath (int ) ;
 int FillPath (int ) ;
 int FlattenPath (int ) ;
 int GetLastError () ;
 int GetPath (int ,int *,int *,int ) ;
 int LineTo (int ,int,int) ;
 scalar_t__ PathToRegion (int ) ;
 int RGN_OR ;
 int Rectangle (int ,int,int,int,int) ;
 int RestoreDC (int ,int) ;
 int SaveDC (int ) ;
 int SelectClipPath (int ,int ) ;
 scalar_t__ SelectObject (int ,scalar_t__) ;
 int SetLastError (int) ;
 int StrokeAndFillPath (int ) ;
 int StrokePath (int ) ;
 int WidenPath (int ) ;
 scalar_t__ broken (int) ;
 int memset (int *,int ,int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_path_state(void)
{
    BYTE buffer[sizeof(BITMAPINFO) + 256 * sizeof(RGBQUAD)];
    BITMAPINFO *bi = (BITMAPINFO *)buffer;
    HDC hdc;
    HRGN rgn;
    HBITMAP orig, dib;
    void *bits;
    BOOL ret;

    hdc = CreateCompatibleDC( 0 );
    memset( buffer, 0, sizeof(buffer) );
    bi->bmiHeader.biSize = sizeof(bi->bmiHeader);
    bi->bmiHeader.biHeight = 256;
    bi->bmiHeader.biWidth = 256;
    bi->bmiHeader.biBitCount = 32;
    bi->bmiHeader.biPlanes = 1;
    bi->bmiHeader.biCompression = BI_RGB;
    dib = CreateDIBSection( 0, bi, DIB_RGB_COLORS, (void**)&bits, ((void*)0), 0 );
    orig = SelectObject( hdc, dib );

    BeginPath( hdc );
    LineTo( hdc, 100, 100 );
    ret = WidenPath( hdc );
    ok( !ret, "WidenPath succeeded\n" );


    SelectObject( hdc, orig );
    ret = WidenPath( hdc );
    ok( !ret, "WidenPath succeeded\n" );

    SelectObject( hdc, dib );
    ret = WidenPath( hdc );
    ok( !ret, "WidenPath succeeded\n" );

    ret = EndPath( hdc );
    ok( ret, "EndPath failed error %u\n", GetLastError() );
    ret = WidenPath( hdc );
    ok( ret, "WidenPath failed error %u\n", GetLastError() );

    SelectObject( hdc, orig );
    ret = WidenPath( hdc );
    ok( ret, "WidenPath failed error %u\n", GetLastError() );

    BeginPath( hdc );
    LineTo( hdc, 100, 100 );
    ret = WidenPath( hdc );
    ok( !ret, "WidenPath succeeded\n" );
    SaveDC( hdc );
    SelectObject( hdc, dib );
    ret = EndPath( hdc );
    ok( ret, "EndPath failed error %u\n", GetLastError() );
    ret = WidenPath( hdc );
    ok( ret, "WidenPath failed error %u\n", GetLastError() );


    RestoreDC( hdc, -1 );
    ret = WidenPath( hdc );
    ok( !ret, "WidenPath succeeded\n" );
    ret = EndPath( hdc );
    ok( ret, "EndPath failed error %u\n", GetLastError() );

    SaveDC( hdc );
    BeginPath( hdc );
    RestoreDC( hdc, -1 );
    ret = WidenPath( hdc );
    ok( ret, "WidenPath failed error %u\n", GetLastError() );


    AbortPath( hdc );
    SetLastError( 0xdeadbeef );
    ret = WidenPath( hdc );
    ok( !ret, "WidenPath succeeded\n" );
    ok( GetLastError() == ERROR_CAN_NOT_COMPLETE || broken(GetLastError() == 0xdeadbeef),
        "wrong error %u\n", GetLastError() );

    SetLastError( 0xdeadbeef );
    ret = FlattenPath( hdc );
    ok( !ret, "FlattenPath succeeded\n" );
    ok( GetLastError() == ERROR_CAN_NOT_COMPLETE || broken(GetLastError() == 0xdeadbeef),
        "wrong error %u\n", GetLastError() );

    SetLastError( 0xdeadbeef );
    ret = StrokePath( hdc );
    ok( !ret, "StrokePath succeeded\n" );
    ok( GetLastError() == ERROR_CAN_NOT_COMPLETE || broken(GetLastError() == 0xdeadbeef),
        "wrong error %u\n", GetLastError() );

    SetLastError( 0xdeadbeef );
    ret = FillPath( hdc );
    ok( !ret, "FillPath succeeded\n" );
    ok( GetLastError() == ERROR_CAN_NOT_COMPLETE || broken(GetLastError() == 0xdeadbeef),
        "wrong error %u\n", GetLastError() );

    SetLastError( 0xdeadbeef );
    ret = StrokeAndFillPath( hdc );
    ok( !ret, "StrokeAndFillPath succeeded\n" );
    ok( GetLastError() == ERROR_CAN_NOT_COMPLETE || broken(GetLastError() == 0xdeadbeef),
        "wrong error %u\n", GetLastError() );

    SetLastError( 0xdeadbeef );
    ret = SelectClipPath( hdc, RGN_OR );
    ok( !ret, "SelectClipPath succeeded\n" );
    ok( GetLastError() == ERROR_CAN_NOT_COMPLETE || broken(GetLastError() == 0xdeadbeef),
        "wrong error %u\n", GetLastError() );

    SetLastError( 0xdeadbeef );
    rgn = PathToRegion( hdc );
    ok( !rgn, "PathToRegion succeeded\n" );
    ok( GetLastError() == ERROR_CAN_NOT_COMPLETE || broken(GetLastError() == 0xdeadbeef),
        "wrong error %u\n", GetLastError() );

    SetLastError( 0xdeadbeef );
    ret = EndPath( hdc );
    ok( !ret, "SelectClipPath succeeded\n" );
    ok( GetLastError() == ERROR_CAN_NOT_COMPLETE || broken(GetLastError() == 0xdeadbeef),
        "wrong error %u\n", GetLastError() );

    SetLastError( 0xdeadbeef );
    ret = CloseFigure( hdc );
    ok( !ret, "CloseFigure succeeded\n" );
    ok( GetLastError() == ERROR_CAN_NOT_COMPLETE || broken(GetLastError() == 0xdeadbeef),
        "wrong error %u\n", GetLastError() );


    AbortPath( hdc );
    BeginPath( hdc );
    SetLastError( 0xdeadbeef );
    ret = WidenPath( hdc );
    ok( !ret, "WidenPath succeeded\n" );
    ok( GetLastError() == ERROR_CAN_NOT_COMPLETE || broken(GetLastError() == 0xdeadbeef),
        "wrong error %u\n", GetLastError() );

    AbortPath( hdc );
    BeginPath( hdc );
    SetLastError( 0xdeadbeef );
    ret = FlattenPath( hdc );
    ok( !ret, "FlattenPath succeeded\n" );
    ok( GetLastError() == ERROR_CAN_NOT_COMPLETE || broken(GetLastError() == 0xdeadbeef),
        "wrong error %u\n", GetLastError() );

    AbortPath( hdc );
    BeginPath( hdc );
    SetLastError( 0xdeadbeef );
    ret = StrokePath( hdc );
    ok( !ret, "StrokePath succeeded\n" );
    ok( GetLastError() == ERROR_CAN_NOT_COMPLETE || broken(GetLastError() == 0xdeadbeef),
        "wrong error %u\n", GetLastError() );

    AbortPath( hdc );
    BeginPath( hdc );
    SetLastError( 0xdeadbeef );
    ret = FillPath( hdc );
    ok( !ret, "FillPath succeeded\n" );
    ok( GetLastError() == ERROR_CAN_NOT_COMPLETE || broken(GetLastError() == 0xdeadbeef),
        "wrong error %u\n", GetLastError() );

    AbortPath( hdc );
    BeginPath( hdc );
    SetLastError( 0xdeadbeef );
    ret = StrokeAndFillPath( hdc );
    ok( !ret, "StrokeAndFillPath succeeded\n" );
    ok( GetLastError() == ERROR_CAN_NOT_COMPLETE || broken(GetLastError() == 0xdeadbeef),
        "wrong error %u\n", GetLastError() );

    AbortPath( hdc );
    BeginPath( hdc );
    Rectangle( hdc, 1, 1, 10, 10 );
    SetLastError( 0xdeadbeef );
    ret = SelectClipPath( hdc, RGN_OR );
    ok( !ret, "SelectClipPath succeeded\n" );
    ok( GetLastError() == ERROR_CAN_NOT_COMPLETE || broken(GetLastError() == 0xdeadbeef),
        "wrong error %u\n", GetLastError() );

    AbortPath( hdc );
    BeginPath( hdc );
    Rectangle( hdc, 1, 1, 10, 10 );
    SetLastError( 0xdeadbeef );
    rgn = PathToRegion( hdc );
    ok( !rgn, "PathToRegion succeeded\n" );
    ok( GetLastError() == ERROR_CAN_NOT_COMPLETE || broken(GetLastError() == 0xdeadbeef),
        "wrong error %u\n", GetLastError() );

    AbortPath( hdc );
    BeginPath( hdc );
    ret = CloseFigure( hdc );
    ok( ret, "CloseFigure failed\n" );


    AbortPath( hdc );
    BeginPath( hdc );
    EndPath( hdc );
    ret = WidenPath( hdc );
    ok( ret, "WidenPath failed\n" );
    ok( GetPath( hdc, ((void*)0), ((void*)0), 0 ) != -1, "path deleted\n" );

    AbortPath( hdc );
    BeginPath( hdc );
    EndPath( hdc );
    ret = FlattenPath( hdc );
    ok( ret, "FlattenPath failed\n" );
    ok( GetPath( hdc, ((void*)0), ((void*)0), 0 ) != -1, "path deleted\n" );

    AbortPath( hdc );
    BeginPath( hdc );
    EndPath( hdc );
    ret = StrokePath( hdc );
    ok( ret, "StrokePath failed\n" );
    ok( GetPath( hdc, ((void*)0), ((void*)0), 0 ) == -1, "path not deleted\n" );

    BeginPath( hdc );
    EndPath( hdc );
    ret = FillPath( hdc );
    ok( ret, "FillPath failed\n" );
    ok( GetPath( hdc, ((void*)0), ((void*)0), 0 ) == -1, "path not deleted\n" );

    BeginPath( hdc );
    EndPath( hdc );
    ret = StrokeAndFillPath( hdc );
    ok( ret, "StrokeAndFillPath failed\n" );
    ok( GetPath( hdc, ((void*)0), ((void*)0), 0 ) == -1, "path not deleted\n" );

    BeginPath( hdc );
    Rectangle( hdc, 1, 1, 10, 10 );
    EndPath( hdc );
    ret = SelectClipPath( hdc, RGN_OR );
    ok( ret, "SelectClipPath failed\n" );
    ok( GetPath( hdc, ((void*)0), ((void*)0), 0 ) == -1, "path not deleted\n" );

    BeginPath( hdc );
    EndPath( hdc );
    SetLastError( 0xdeadbeef );
    ret = SelectClipPath( hdc, RGN_OR );
    ok( !ret, "SelectClipPath succeeded on empty path\n" );
    ok( GetLastError() == 0xdeadbeef, "wrong error %u\n", GetLastError() );
    ok( GetPath( hdc, ((void*)0), ((void*)0), 0 ) == -1, "path not deleted\n" );

    BeginPath( hdc );
    Rectangle( hdc, 1, 1, 10, 10 );
    EndPath( hdc );
    rgn = PathToRegion( hdc );
    ok( rgn != 0, "PathToRegion failed\n" );
    DeleteObject( rgn );
    ok( GetPath( hdc, ((void*)0), ((void*)0), 0 ) == -1, "path not deleted\n" );

    BeginPath( hdc );
    EndPath( hdc );
    SetLastError( 0xdeadbeef );
    rgn = PathToRegion( hdc );
    ok( !rgn, "PathToRegion succeeded on empty path\n" );
    ok( GetLastError() == 0xdeadbeef, "wrong error %u\n", GetLastError() );
    DeleteObject( rgn );
    ok( GetPath( hdc, ((void*)0), ((void*)0), 0 ) == -1, "path not deleted\n" );

    BeginPath( hdc );
    EndPath( hdc );
    SetLastError( 0xdeadbeef );
    ret = CloseFigure( hdc );
    ok( !ret, "CloseFigure succeeded\n" );
    ok( GetLastError() == ERROR_CAN_NOT_COMPLETE || broken(GetLastError() == 0xdeadbeef),
        "wrong error %u\n", GetLastError() );

    AbortPath( hdc );
    BeginPath( hdc );
    EndPath( hdc );
    SetLastError( 0xdeadbeef );
    ret = EndPath( hdc );
    ok( !ret, "EndPath succeeded\n" );
    ok( GetLastError() == ERROR_CAN_NOT_COMPLETE || broken(GetLastError() == 0xdeadbeef),
        "wrong error %u\n", GetLastError() );

    DeleteDC( hdc );
    DeleteObject( dib );
}
