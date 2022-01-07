
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int descr ;
struct TYPE_4__ {int nSize; } ;
typedef TYPE_1__ PIXELFORMATDESCRIPTOR ;
typedef int * HDC ;
typedef int * HBITMAP ;
typedef int DWORD ;
typedef int COLORREF ;


 int BITSPIXEL ;
 int CLR_INVALID ;
 int * CreateBitmap (int,int,int,int,int*) ;
 int * CreateCompatibleDC (int *) ;
 int DeleteObject (int *) ;
 int DescribePixelFormat (int *,int,int,TYPE_1__*) ;
 int * GetDC (int ) ;
 int GetDeviceCaps (int *,int ) ;
 int GetPixel (int *,int,int) ;
 int ReleaseDC (int ,int *) ;
 int * SelectObject (int *,int *) ;
 int memset (TYPE_1__*,int ,int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_DC_bitmap(void)
{
    PIXELFORMATDESCRIPTOR descr;
    HDC hdc, hdcmem;
    DWORD bits[64];
    HBITMAP hbmp, oldhbmp;
    COLORREF col;
    int i, bitspixel;
    int ret, ret2;


    for( i = 0; i < 64; i++) bits[i] = i & 1 ? 0 : 0xffffff;

    hdc = GetDC(0);
    ok( hdc != ((void*)0), "CreateDC rets %p\n", hdc);
    bitspixel = GetDeviceCaps( hdc, BITSPIXEL);

    hdcmem = CreateCompatibleDC( hdc);
    ok( hdcmem != ((void*)0), "CreateCompatibleDC rets %p\n", hdcmem);


    ret2 = DescribePixelFormat(hdcmem, 0, sizeof(descr), ((void*)0));
    ok(ret2 > 0, "expected ret2 > 0, got %d\n", ret2);
    ret = DescribePixelFormat(hdcmem, 1, sizeof(descr), ((void*)0));
    ok(ret == ret2, "expected ret == %d, got %d\n", ret2, ret);
    ret = DescribePixelFormat(hdcmem, 0x10000, sizeof(descr), ((void*)0));
    ok(ret == ret2, "expected ret == %d, got %d\n", ret2, ret);


    memset(&descr, 0, sizeof(descr));
    ret = DescribePixelFormat(hdcmem, 0, sizeof(descr), &descr);
    ok(ret == 0, "expected ret == 0, got %d\n", ret);
    ok(descr.nSize == 0, "expected descr.nSize == 0, got %d\n", descr.nSize);

    memset(&descr, 0, sizeof(descr));
    ret = DescribePixelFormat(hdcmem, 1, sizeof(descr), &descr);
    ok(ret == ret2, "expected ret == %d, got %d\n", ret2, ret);
    ok(descr.nSize == sizeof(descr), "expected desc.nSize == sizeof(descr), got %d\n", descr.nSize);

    memset(&descr, 0, sizeof(descr));
    ret = DescribePixelFormat(hdcmem, 0x10000, sizeof(descr), &descr);
    ok(ret == 0, "expected ret == 0, got %d\n", ret);
    ok(descr.nSize == 0, "expected descr.nSize == 0, got %d\n", descr.nSize);


    hbmp = CreateBitmap(32, 32, 1, 1, bits);
    ok( hbmp != ((void*)0), "CreateBitmap returns %p\n", hbmp);
    oldhbmp = SelectObject( hdcmem, hbmp);
    ok( oldhbmp != ((void*)0), "SelectObject returned NULL\n" );
    col = GetPixel( hdcmem, 0, 0);
    ok( col == 0xffffff, "GetPixel returned %08x, expected 00ffffff\n", col);
    col = GetPixel( hdcmem, 1, 1);
    ok( col == 0x000000, "GetPixel returned %08x, expected 00000000\n", col);
    col = GetPixel( hdcmem, 100, 1);
    ok( col == CLR_INVALID, "GetPixel returned %08x, expected ffffffff\n", col);
    SelectObject( hdcmem, oldhbmp);
    DeleteObject( hbmp);


    hbmp = CreateBitmap(16, 16, 1, 2, bits);
    ok( hbmp != ((void*)0), "CreateBitmap returns %p\n", hbmp);
    oldhbmp = SelectObject( hdcmem, hbmp);
    if( bitspixel != 2)
        ok( !oldhbmp, "SelectObject of a bitmap with 2 bits/pixel should return  NULL\n");
    if( oldhbmp) SelectObject( hdcmem, oldhbmp);
    DeleteObject( hbmp);


    hbmp = CreateBitmap(6, 6, 1, 16, bits);
    ok( hbmp != ((void*)0), "CreateBitmap returns %p\n", hbmp);
    oldhbmp = SelectObject( hdcmem, hbmp);
    if( bitspixel == 16) {
        ok( oldhbmp != ((void*)0), "SelectObject returned NULL\n" );
        col = GetPixel( hdcmem, 0, 0);
        ok( col == 0xffffff,
            "GetPixel of a bitmap with 16 bits/pixel returned %08x, expected 00ffffff\n", col);
        col = GetPixel( hdcmem, 1, 1);
        ok( col == 0x000000,
            "GetPixel of a bitmap with 16 bits/pixel returned returned %08x, expected 00000000\n", col);
    }
    if( oldhbmp) SelectObject( hdcmem, oldhbmp);
    DeleteObject( hbmp);


    hbmp = CreateBitmap(4, 4, 1, 32, bits);
    ok( hbmp != ((void*)0), "CreateBitmap returns %p\n", hbmp);
    oldhbmp = SelectObject( hdcmem, hbmp);
    if( bitspixel == 32) {
        ok( oldhbmp != ((void*)0), "SelectObject returned NULL\n" );
        col = GetPixel( hdcmem, 0, 0);
        ok( col == 0xffffff,
            "GetPixel of a bitmap with 32 bits/pixel returned %08x, expected 00ffffff\n", col);
        col = GetPixel( hdcmem, 1, 1);
        ok( col == 0x000000,
            "GetPixel of a bitmap with 32 bits/pixel returned returned %08x, expected 00000000\n", col);
    }
    if( oldhbmp) SelectObject( hdcmem, oldhbmp);
    DeleteObject( hbmp);
    ReleaseDC( 0, hdc );
}
