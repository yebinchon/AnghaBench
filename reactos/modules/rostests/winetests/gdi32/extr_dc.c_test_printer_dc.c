
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HDC ;
typedef int * HBITMAP ;
typedef scalar_t__ DWORD ;


 int BITSPIXEL ;
 int BitBlt (int *,int,int,int,int,int *,int ,int ,int ) ;
 scalar_t__ CLR_INVALID ;
 int CloseEnhMetaFile (int *) ;
 int * CreateBitmap (int,int,int,int,int *) ;
 int * CreateCompatibleDC (int *) ;
 int * CreateEnhMetaFileA (int *,int *,int *,int *) ;
 scalar_t__ DT_RASDISPLAY ;
 scalar_t__ DT_RASPRINTER ;
 int DeleteDC (int *) ;
 int DeleteEnhMetaFile (int ) ;
 int DeleteObject (int *) ;
 int FALSE ;
 int GetDeviceCaps (int *,int ) ;
 scalar_t__ GetPixel (int *,int ,int ) ;
 int SRCCOPY ;
 int * SelectObject (int *,int *) ;
 int TECHNOLOGY ;
 int TRUE ;
 int * create_printer_dc (int,int ) ;
 scalar_t__ is_postscript_printer (int *) ;
 int ok (int,char*,...) ;
 int test_device_caps (int *,int *,char*,int) ;

__attribute__((used)) static void test_printer_dc(void)
{
    HDC memdc, display_memdc, enhmf_dc;
    HBITMAP orig, bmp;
    DWORD ret;
    HDC hdc, hdc_200;

    hdc = create_printer_dc(100, FALSE);
    hdc_200 = create_printer_dc(200, FALSE);

    if (!hdc || !hdc_200) return;

    test_device_caps( hdc, hdc_200, "printer dc", is_postscript_printer(hdc) ? 2 : 1 );
    DeleteDC( hdc_200 );

    hdc_200 = create_printer_dc(200, TRUE);
    test_device_caps( hdc, hdc_200, "printer dc", is_postscript_printer(hdc) ? 2 : 1 );
    DeleteDC( hdc_200 );

    memdc = CreateCompatibleDC( hdc );
    display_memdc = CreateCompatibleDC( 0 );

    ok( memdc != ((void*)0), "CreateCompatibleDC failed for printer\n" );
    ok( display_memdc != ((void*)0), "CreateCompatibleDC failed for screen\n" );

    ret = GetDeviceCaps( hdc, TECHNOLOGY );
    ok( ret == DT_RASPRINTER, "wrong type %u\n", ret );

    ret = GetDeviceCaps( memdc, TECHNOLOGY );
    ok( ret == DT_RASPRINTER, "wrong type %u\n", ret );

    ret = GetDeviceCaps( display_memdc, TECHNOLOGY );
    ok( ret == DT_RASDISPLAY, "wrong type %u\n", ret );

    bmp = CreateBitmap( 100, 100, 1, GetDeviceCaps( hdc, BITSPIXEL ), ((void*)0) );
    orig = SelectObject( memdc, bmp );
    ok( orig != ((void*)0), "SelectObject failed\n" );
    ok( BitBlt( hdc, 10, 10, 20, 20, memdc, 0, 0, SRCCOPY ), "BitBlt failed\n" );

    test_device_caps( memdc, hdc, "printer dc", 1 );

    ok( !SelectObject( display_memdc, bmp ), "SelectObject succeeded\n" );
    SelectObject( memdc, orig );
    DeleteObject( bmp );

    bmp = CreateBitmap( 100, 100, 1, 1, ((void*)0) );
    orig = SelectObject( display_memdc, bmp );
    ok( orig != ((void*)0), "SelectObject failed\n" );
    ok( !SelectObject( memdc, bmp ), "SelectObject succeeded\n" );
    ok( BitBlt( hdc, 10, 10, 20, 20, display_memdc, 0, 0, SRCCOPY ), "BitBlt failed\n" );
    ok( BitBlt( memdc, 10, 10, 20, 20, display_memdc, 0, 0, SRCCOPY ), "BitBlt failed\n" );
    ok( BitBlt( display_memdc, 10, 10, 20, 20, memdc, 0, 0, SRCCOPY ), "BitBlt failed\n" );

    ret = GetPixel( hdc, 0, 0 );
    ok( ret == CLR_INVALID, "wrong pixel value %x\n", ret );

    enhmf_dc = CreateEnhMetaFileA( hdc, ((void*)0), ((void*)0), ((void*)0) );
    ok(enhmf_dc != 0, "CreateEnhMetaFileA failed\n");
    test_device_caps( enhmf_dc, hdc, "enhmetafile printer dc", 1 );
    DeleteEnhMetaFile( CloseEnhMetaFile( enhmf_dc ));

    enhmf_dc = CreateEnhMetaFileA( hdc, ((void*)0), ((void*)0), ((void*)0) );
    ok(enhmf_dc != 0, "CreateEnhMetaFileA failed\n");
    test_device_caps( enhmf_dc, hdc, "enhmetafile printer dc", 1 );
    DeleteEnhMetaFile( CloseEnhMetaFile( enhmf_dc ));

    DeleteDC( memdc );
    DeleteDC( display_memdc );
    DeleteDC( hdc );
    DeleteObject( bmp );
}
