
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bits ;
typedef int RECT ;
typedef int * HDC ;
typedef int * HBRUSH ;
typedef int * HBITMAP ;
typedef int DWORD ;
typedef int COLORREF ;


 int BLACK_BRUSH ;
 int * CreateBitmap (int,int,int,int,int *) ;
 int * CreateCompatibleDC (int *) ;
 int DeleteDC (int *) ;
 int DeleteObject (int *) ;
 int FillRect (int *,int *,int ) ;
 int * GetDC (int ) ;
 int GetPixel (int *,int ,int ) ;
 int * GetStockObject (int ) ;
 int ReleaseDC (int ,int *) ;
 int * SelectObject (int *,int *) ;
 int SetRect (int *,int ,int ,int,int) ;
 int memset (int *,int,int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_FillRect(void)
{
    HDC hdc, hdcmem;
    DWORD bits[64];
    HBITMAP hbmp, oldhbmp;
    COLORREF col;
    HBRUSH old_brush;
    RECT r;


    memset(bits, 0xff, sizeof(bits));

    hdc = GetDC(0);
    ok( hdc != ((void*)0), "CreateDC rets %p\n", hdc);

    hdcmem = CreateCompatibleDC(hdc);
    ok(hdcmem != ((void*)0), "CreateCompatibleDC rets %p\n", hdcmem);

    hbmp = CreateBitmap(32, 32, 1, 1, bits);
    ok(hbmp != ((void*)0), "CreateBitmap returns %p\n", hbmp);
    oldhbmp = SelectObject(hdcmem, hbmp);
    ok(oldhbmp != ((void*)0), "SelectObject returned NULL\n");
    col = GetPixel(hdcmem, 0, 0);
    ok( col == 0xffffff, "GetPixel returned %08x, expected 0xffffff\n", col);


    old_brush = SelectObject(hdcmem, GetStockObject(BLACK_BRUSH));
    SetRect(&r, 0, 0, 5, 5);
    FillRect(hdcmem, &r, 0);
    SelectObject(hdcmem, old_brush);

    col = GetPixel(hdcmem, 0, 0);
    ok(col == 0, "GetPixel returned %08x, expected 0\n", col);

    SelectObject(hdcmem, oldhbmp);
    DeleteObject(hbmp);
    DeleteDC(hdcmem);
    ReleaseDC(0, hdc);
}
