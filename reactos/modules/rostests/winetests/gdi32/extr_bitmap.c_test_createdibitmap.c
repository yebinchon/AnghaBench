
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int bmih ;
typedef int bm ;
struct TYPE_9__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; scalar_t__ biSizeImage; void* biCompression; } ;
struct TYPE_10__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; TYPE_1__ bmiHeader; void* biCompression; } ;
typedef int INT ;
typedef int HDC ;
typedef int * HBITMAP ;
typedef int DWORD ;
typedef TYPE_2__ BITMAPINFOHEADER ;
typedef TYPE_2__ BITMAPINFO ;


 int BITSPIXEL ;
 void* BI_RGB ;
 int CBM_INIT ;
 int * CreateCompatibleBitmap (int ,int,int) ;
 int CreateCompatibleDC (int ) ;
 int * CreateDIBitmap (int ,TYPE_2__*,int ,int*,TYPE_2__*,int ) ;
 int DIB_RGB_COLORS ;
 int DeleteDC (int ) ;
 int DeleteObject (int *) ;
 int GetDC (int ) ;
 int GetDIBits (int ,int *,int ,int,int*,TYPE_2__*,int ) ;
 int GetDeviceCaps (int ,int ) ;
 int ReleaseDC (int ,int ) ;
 int * SelectObject (int ,int *) ;
 int memset (TYPE_2__*,int ,int) ;
 int ok (int,char*,...) ;
 int test_bitmap_info (int *,int,TYPE_2__*) ;

__attribute__((used)) static void test_createdibitmap(void)
{
    HDC hdc, hdcmem;
    BITMAPINFOHEADER bmih;
    BITMAPINFO bm;
    HBITMAP hbm, hbm_colour, hbm_old;
    INT screen_depth;
    DWORD pixel;

    hdc = GetDC(0);
    screen_depth = GetDeviceCaps(hdc, BITSPIXEL);
    memset(&bmih, 0, sizeof(bmih));
    bmih.biSize = sizeof(bmih);
    bmih.biWidth = 10;
    bmih.biHeight = 10;
    bmih.biPlanes = 1;
    bmih.biBitCount = 32;
    bmih.biCompression = BI_RGB;

    hbm = CreateDIBitmap(hdc, ((void*)0), CBM_INIT, ((void*)0), ((void*)0), 0);
    ok(hbm == ((void*)0), "CreateDIBitmap should fail\n");
    hbm = CreateDIBitmap(hdc, ((void*)0), 0, ((void*)0), ((void*)0), 0);
    ok(hbm == ((void*)0), "CreateDIBitmap should fail\n");






    hbm = CreateDIBitmap(hdc, &bmih, 0, ((void*)0), ((void*)0), 0);
    ok(hbm != ((void*)0), "CreateDIBitmap failed\n");
    test_bitmap_info(hbm, screen_depth, &bmih);
    DeleteObject(hbm);


    bmih.biBitCount = 16;
    hbm = CreateDIBitmap(hdc, &bmih, 0, ((void*)0), ((void*)0), 0);
    ok(hbm != ((void*)0), "CreateDIBitmap failed\n");
    test_bitmap_info(hbm, screen_depth, &bmih);
    DeleteObject(hbm);


    bmih.biBitCount = 1;
    hbm = CreateDIBitmap(hdc, &bmih, 0, ((void*)0), ((void*)0), 0);
    ok(hbm != ((void*)0), "CreateDIBitmap failed\n");
    test_bitmap_info(hbm, screen_depth, &bmih);
    DeleteObject(hbm);


    hdcmem = CreateCompatibleDC(hdc);


    bmih.biBitCount = 32;
    hbm = CreateDIBitmap(hdcmem, &bmih, 0, ((void*)0), ((void*)0), 0);
    ok(hbm != ((void*)0), "CreateDIBitmap failed\n");
    test_bitmap_info(hbm, 1, &bmih);
    DeleteObject(hbm);


    bmih.biBitCount = 16;
    hbm = CreateDIBitmap(hdcmem, &bmih, 0, ((void*)0), ((void*)0), 0);
    ok(hbm != ((void*)0), "CreateDIBitmap failed\n");
    test_bitmap_info(hbm, 1, &bmih);
    DeleteObject(hbm);


    bmih.biBitCount = 1;
    hbm = CreateDIBitmap(hdcmem, &bmih, 0, ((void*)0), ((void*)0), 0);
    ok(hbm != ((void*)0), "CreateDIBitmap failed\n");
    test_bitmap_info(hbm, 1, &bmih);
    DeleteObject(hbm);



    hbm_colour = CreateCompatibleBitmap(hdc, bmih.biWidth, bmih.biHeight);
    test_bitmap_info(hbm_colour, screen_depth, &bmih);
    hbm_old = SelectObject(hdcmem, hbm_colour);


    bmih.biBitCount = 32;
    hbm = CreateDIBitmap(hdcmem, &bmih, 0, ((void*)0), ((void*)0), 0);
    ok(hbm != ((void*)0), "CreateDIBitmap failed\n");
    test_bitmap_info(hbm, screen_depth, &bmih);
    DeleteObject(hbm);


    bmih.biBitCount = 16;
    hbm = CreateDIBitmap(hdcmem, &bmih, 0, ((void*)0), ((void*)0), 0);
    ok(hbm != ((void*)0), "CreateDIBitmap failed\n");
    test_bitmap_info(hbm, screen_depth, &bmih);
    DeleteObject(hbm);


    bmih.biBitCount = 1;
    hbm = CreateDIBitmap(hdcmem, &bmih, 0, ((void*)0), ((void*)0), 0);
    ok(hbm != ((void*)0), "CreateDIBitmap failed\n");
    test_bitmap_info(hbm, screen_depth, &bmih);
    DeleteObject(hbm);

    SelectObject(hdcmem, hbm_old);
    DeleteObject(hbm_colour);
    DeleteDC(hdcmem);

    bmih.biBitCount = 32;
    hbm = CreateDIBitmap(0, &bmih, 0, ((void*)0), ((void*)0), 0);
    ok(hbm != ((void*)0), "CreateDIBitmap failed\n");
    test_bitmap_info(hbm, 1, &bmih);
    DeleteObject(hbm);


    pixel = 0xffffffff;
    bmih.biBitCount = 1;
    bmih.biWidth = 1;
    bmih.biHeight = 1;

    memset(&bm, 0, sizeof(bm));
    bm.bmiHeader.biSize = sizeof(bm.bmiHeader);
    bm.bmiHeader.biWidth = 1;
    bm.bmiHeader.biHeight = 1;
    bm.bmiHeader.biPlanes = 1;
    bm.bmiHeader.biBitCount= 24;
    bm.bmiHeader.biCompression= BI_RGB;
    bm.bmiHeader.biSizeImage = 0;
    hbm = CreateDIBitmap(hdc, &bmih, CBM_INIT, &pixel, &bm, DIB_RGB_COLORS);
    ok(hbm != ((void*)0), "CreateDIBitmap failed\n");

    pixel = 0xdeadbeef;
    bm.bmiHeader.biBitCount= 32;
    GetDIBits(hdc, hbm, 0, 1, &pixel, &bm, DIB_RGB_COLORS);
    ok(pixel == 0x00ffffff, "Reading a 32 bit pixel from a DDB returned %08x\n", pixel);
    DeleteObject(hbm);

    ReleaseDC(0, hdc);
}
