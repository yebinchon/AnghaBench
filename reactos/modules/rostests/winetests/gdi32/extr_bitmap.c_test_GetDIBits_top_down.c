
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int bi ;
struct TYPE_6__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; int biCompression; } ;
struct TYPE_7__ {TYPE_1__ bmiHeader; } ;
typedef int * HDC ;
typedef int * HBITMAP ;
typedef TYPE_2__ BITMAPINFO ;


 int BI_RGB ;
 int * CreateDIBSection (int *,TYPE_2__*,int ,void**,int *,int ) ;
 int DIB_RGB_COLORS ;
 int DeleteObject (int *) ;
 int * GetDC (int *) ;
 int GetDIBits (int *,int *,int,int,int*,TYPE_2__*,int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int ok (int,char*,...) ;
 int setup_picture (char*,int) ;

__attribute__((used)) static void test_GetDIBits_top_down(int bpp)
{
    BITMAPINFO bi;
    HBITMAP bmptb, bmpbt;
    HDC hdc;
    int pictureOut[4];
    int *picture;
    int statusCode;

    memset( &bi, 0, sizeof(bi) );
    bi.bmiHeader.biSize=sizeof(bi.bmiHeader);
    bi.bmiHeader.biWidth=2;
    bi.bmiHeader.biHeight=2;
    bi.bmiHeader.biPlanes=1;
    bi.bmiHeader.biBitCount=bpp;
    bi.bmiHeader.biCompression=BI_RGB;


    hdc = GetDC(((void*)0));
    ok(hdc != ((void*)0), "Could not get a handle to a device context.\n");


    bmpbt = CreateDIBSection(hdc, &bi, DIB_RGB_COLORS, (void**)&picture, ((void*)0), 0);
    ok(bmpbt != ((void*)0), "Could not create a DIB section.\n");

    setup_picture((char*)picture, bpp);

    bi.bmiHeader.biHeight=-2;
    bmptb = CreateDIBSection(hdc, &bi, DIB_RGB_COLORS, (void**)&picture, ((void*)0), 0);
    ok(bmptb != ((void*)0), "Could not create a DIB section.\n");

    setup_picture((char*)picture, bpp);

    bi.bmiHeader.biWidth = 1;

    bi.bmiHeader.biHeight = 2;
    statusCode = GetDIBits(hdc, bmpbt, 0, 1, pictureOut, &bi, DIB_RGB_COLORS);
    ok(statusCode, "Failed to call GetDIBits. Status code: %d.\n", statusCode);

    ok((char)pictureOut[0] == 0, "Bottom-up -> bottom-up: first pixel should be 0 but was %d.\n", (char)pictureOut[0]);
    statusCode = GetDIBits(hdc, bmptb, 0, 1, pictureOut, &bi, DIB_RGB_COLORS);
    ok(statusCode, "Failed to call GetDIBits. Status code: %d.\n", statusCode);
    ok((char)pictureOut[0] == 2, "Top-down -> bottom-up: first pixel should be 2 but was %d.\n", (char)pictureOut[0]);

    statusCode = GetDIBits(hdc, bmptb, 1, 1, pictureOut, &bi, DIB_RGB_COLORS);
    ok(statusCode, "Failed to call GetDIBits. Status code: %d.\n", statusCode);
    ok((char)pictureOut[0] == 0, "Top-down -> bottom-up: first pixel should be 0 but was %d.\n", (char)pictureOut[0]);
    statusCode = GetDIBits(hdc, bmpbt, 1, 1, pictureOut, &bi, DIB_RGB_COLORS);
    ok(statusCode, "Failed to call GetDIBits. Status code: %d.\n", statusCode);
    ok((char)pictureOut[0] == 2, "Bottom-up -> bottom-up: first pixel should be 2 but was %d.\n", (char)pictureOut[0]);

    statusCode = GetDIBits(hdc, bmptb, 0, 2, pictureOut, &bi, DIB_RGB_COLORS);
    ok(statusCode, "Failed to call GetDIBits. Status code: %d.\n", statusCode);
    ok((char)pictureOut[0] == 2, "Top-down -> bottom-up: first scanline should be 2 but was %d.\n", (char)pictureOut[0]);
    ok((char)pictureOut[1] == 0, "Top-down -> bottom-up: second scanline should be 0 but was %d.\n", (char)pictureOut[0]);
    statusCode = GetDIBits(hdc, bmpbt, 0, 2, pictureOut, &bi, DIB_RGB_COLORS);
    ok(statusCode, "Failed to call GetDIBits. Status code: %d.\n", statusCode);
    ok((char)pictureOut[0] == 0, "Bottom up -> bottom-up: first scanline should be 0 but was %d.\n", (char)pictureOut[0]);
    ok((char)pictureOut[1] == 2, "Bottom up -> bottom-up: second scanline should be 2 but was %d.\n", (char)pictureOut[0]);


    bi.bmiHeader.biHeight = -2;
    statusCode = GetDIBits(hdc, bmpbt, 0, 1, pictureOut, &bi, DIB_RGB_COLORS);
    ok(statusCode, "Failed to call GetDIBits. Status code: %d.\n", statusCode);
    ok((char)pictureOut[0] == 0, "Bottom-up -> top-down: first pixel should be 0 but was %d.\n", (char)pictureOut[0]);
    statusCode = GetDIBits(hdc, bmptb, 0, 1, pictureOut, &bi, DIB_RGB_COLORS);
    ok(statusCode, "Failed to call GetDIBits. Status code: %d.\n", statusCode);
    ok((char)pictureOut[0] == 2, "Top-down -> top-down: first pixel should be 2 but was %d.\n", (char)pictureOut[0]);

    statusCode = GetDIBits(hdc, bmptb, 1, 1, pictureOut, &bi, DIB_RGB_COLORS);
    ok(statusCode, "Failed to call GetDIBits. Status code: %d.\n", statusCode);
    ok((char)pictureOut[0] == 0, "Top-down -> bottom-up: first pixel should be 0 but was %d.\n", (char)pictureOut[0]);
    statusCode = GetDIBits(hdc, bmpbt, 1, 1, pictureOut, &bi, DIB_RGB_COLORS);
    ok(statusCode, "Failed to call GetDIBits. Status code: %d.\n", statusCode);
    ok((char)pictureOut[0] == 2, "Top-down -> bottom-up: first pixel should be 2 but was %d.\n", (char)pictureOut[0]);

    statusCode = GetDIBits(hdc, bmptb, 0, 2, pictureOut, &bi, DIB_RGB_COLORS);
    ok(statusCode, "Failed to call GetDIBits. Status code: %d.\n", statusCode);
    ok((char)pictureOut[0] == 0, "Top-down -> top-down: first scanline should be 0 but was %d.\n", (char)pictureOut[0]);
    ok((char)pictureOut[1] == 2, "Top-down -> top-down: second scanline should be 2 but was %d.\n", (char)pictureOut[0]);
    statusCode = GetDIBits(hdc, bmpbt, 0, 2, pictureOut, &bi, DIB_RGB_COLORS);
    ok(statusCode, "Failed to call GetDIBits. Status code: %d.\n", statusCode);
    ok((char)pictureOut[0] == 2, "Bottom up -> top-down: first scanline should be 2 but was %d.\n", (char)pictureOut[0]);
    ok((char)pictureOut[1] == 0, "Bottom up -> top-down: second scanline should be 0 but was %d.\n", (char)pictureOut[0]);

    DeleteObject(bmpbt);
    DeleteObject(bmptb);
}
