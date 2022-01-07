
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int HDC ;
typedef int * HBITMAP ;
typedef int COLORREF ;


 int * CreateBitmap (int,int,int,int,char*) ;
 int CreateCompatibleDC (int ) ;
 int DeleteDC (int ) ;
 int DeleteObject (int *) ;
 int GetPixel (int ,int,int ) ;
 int * SelectObject (int ,int *) ;
 int SetBkColor (int ,int) ;
 int SetTextColor (int ,int) ;
 int ok (int,char*,...) ;

void Test_GetPixel_1bpp()
{
    HDC hdc;
    HBITMAP hbmp;
    char buffer[] = {0x80, 0x0};
    COLORREF color;

    hbmp = CreateBitmap(2,1,1,1,buffer);
    ok(hbmp != ((void*)0), "Failed to create a monochrom bitmap...\n");
    hdc = CreateCompatibleDC(0);
    hbmp = SelectObject(hdc, hbmp);
    ok(hbmp != ((void*)0), "Could not select the bitmap into the DC.\n");

    color = GetPixel(hdc, 0, 0);
    ok(color == 0xFFFFFF, "Wrong color at 0,0 : 0x%08x\n", (UINT)color);
    color = GetPixel(hdc, 1, 0);
    ok(color == 0, "Wrong color at 1,0 : 0x%08x\n", (UINT)color);

    SetBkColor(hdc, 0x0000FF);
    SetTextColor(hdc, 0x00FF00);
    color = GetPixel(hdc, 0, 0);
    ok(color == 0xFFFFFF, "Wrong color at 0,0 : 0x%08x\n", (UINT)color);
    color = GetPixel(hdc, 1, 0);
    ok(color == 0, "Wrong color at 1,0 : 0x%08x\n", (UINT)color);

    SetBkColor(hdc, 0x12345678);
    SetTextColor(hdc, 0x87654321);
    color = GetPixel(hdc, 0, 0);
    ok(color == 0xFFFFFF, "Wrong color at 0,0 : 0x%08x\n", (UINT)color);
    color = GetPixel(hdc, 1, 0);
    ok(color == 0, "Wrong color at 1,0 : 0x%08x\n", (UINT)color);

    hbmp = SelectObject(hdc, hbmp);
    DeleteObject(hbmp);
    DeleteDC(hdc);
}
