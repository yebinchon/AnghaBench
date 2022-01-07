
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int bits_1 ;
struct TYPE_5__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; int biCompression; } ;
struct TYPE_6__ {TYPE_1__ bmiHeader; } ;
typedef int HDC ;
typedef int HBITMAP ;
typedef int DWORD ;
typedef int BITMAPINFOHEADER ;
typedef TYPE_2__ BITMAPINFO ;


 int BI_RGB ;
 int CreateCompatibleBitmap (int ,int,int) ;
 int CreateCompatibleDC (int ) ;
 int DIB_RGB_COLORS ;
 int DeleteDC (int ) ;
 int DeleteObject (int ) ;
 int GetDC (int *) ;
 int GetDIBits (int ,int ,int ,int,int*,TYPE_2__*,int ) ;
 int LAYOUT_LTR ;
 int LAYOUT_RTL ;
 int RGB (int,int ,int ) ;
 int ReleaseDC (int *,int ) ;
 int SelectObject (int ,int ) ;
 int SetDIBits (int ,int ,int ,int,int*,TYPE_2__*,int ) ;
 int SetPixel (int ,int ,int ,int ) ;
 int memcmp (int*,int*,int) ;
 int ok (int,char*,...) ;
 int pSetLayout (int ,int ) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_GetSetDIBits_rtl(void)
{
    HDC hdc, hdc_mem;
    HBITMAP bitmap, orig_bitmap;
    BITMAPINFO info;
    int ret;
    DWORD bits_1[8 * 8], bits_2[8 * 8];

    if(!pSetLayout)
    {
        win_skip("Don't have SetLayout\n");
        return;
    }

    hdc = GetDC( ((void*)0) );
    hdc_mem = CreateCompatibleDC( hdc );
    pSetLayout( hdc_mem, LAYOUT_LTR );

    bitmap = CreateCompatibleBitmap( hdc, 8, 8 );
    orig_bitmap = SelectObject( hdc_mem, bitmap );
    SetPixel( hdc_mem, 0, 0, RGB(0xff, 0, 0) );
    SelectObject( hdc_mem, orig_bitmap );

    info.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
    info.bmiHeader.biWidth = 8;
    info.bmiHeader.biHeight = 8;
    info.bmiHeader.biPlanes = 1;
    info.bmiHeader.biBitCount = 32;
    info.bmiHeader.biCompression = BI_RGB;



    ret = GetDIBits( hdc_mem, bitmap, 0, 8, bits_1, &info, DIB_RGB_COLORS );
    ok(ret == 8, "got %d\n", ret);
    ok(bits_1[56] == 0xff0000, "got %08x\n", bits_1[56]);

    pSetLayout( hdc_mem, LAYOUT_RTL );

    ret = GetDIBits( hdc_mem, bitmap, 0, 8, bits_2, &info, DIB_RGB_COLORS );
    ok(ret == 8, "got %d\n", ret);

    ok(!memcmp( bits_1, bits_2, sizeof(bits_1) ), "bits differ\n");




    pSetLayout( hdc_mem, LAYOUT_LTR );

    ret = SetDIBits( hdc_mem, bitmap, 0, 8, bits_1, &info, DIB_RGB_COLORS );
    ok(ret == 8, "got %d\n", ret);
    ret = GetDIBits( hdc_mem, bitmap, 0, 8, bits_2, &info, DIB_RGB_COLORS );
    ok(ret == 8, "got %d\n", ret);
    ok(!memcmp( bits_1, bits_2, sizeof(bits_1) ), "bits differ\n");

    pSetLayout( hdc_mem, LAYOUT_RTL );

    ret = SetDIBits( hdc_mem, bitmap, 0, 8, bits_1, &info, DIB_RGB_COLORS );
    ok(ret == 8, "got %d\n", ret);
    ret = GetDIBits( hdc_mem, bitmap, 0, 8, bits_2, &info, DIB_RGB_COLORS );
    ok(ret == 8, "got %d\n", ret);
    ok(!memcmp( bits_1, bits_2, sizeof(bits_1) ), "bits differ\n");

    DeleteObject( bitmap );
    DeleteDC( hdc_mem );
    ReleaseDC( ((void*)0), hdc );
}
