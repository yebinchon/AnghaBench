
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ X; scalar_t__ Y; int Width; int Height; } ;
struct TYPE_5__ {int right; int left; int bottom; int top; } ;
typedef TYPE_1__ RECT ;
typedef int POINT ;
typedef int HGDIOBJ ;
typedef int HDC ;
typedef int HBITMAP ;
typedef int GpStatus ;
typedef TYPE_2__ GpRect ;
typedef int GpGraphics ;


 int CombineModeReplace ;
 int CreateCompatibleBitmap (int ,int,int) ;
 int CreateCompatibleDC (int ) ;
 int DeleteDC (int ) ;
 int DeleteObject (int ) ;
 int GdipCreateFromHDC (int ,int **) ;
 int GdipDeleteGraphics (int *) ;
 int GdipGetVisibleClipBoundsI (int *,TYPE_2__*) ;
 int GdipSetClipRectI (int *,int ,int ,int,int,int ) ;
 int GetClientRect (int ,TYPE_1__*) ;
 int GetDC (int ) ;
 int Ok ;
 int ReleaseDC (int ,int ) ;
 int SelectObject (int ,int ) ;
 int SetWindowOrgEx (int ,int,int,int *) ;
 int expect (int ,int ) ;
 int hwnd ;
 int ok (int,char*) ;

__attribute__((used)) static void test_GdipGetVisibleClipBounds_memoryDC(void)
{
    HDC hdc,dc;
    HBITMAP bmp;
    HGDIOBJ old;
    RECT rect;
    POINT pt;
    int width = 0;
    int height = 0;
    GpGraphics* graphics = ((void*)0);
    GpRect boundRect;
    GpStatus status;

    ok(GetClientRect(hwnd, &rect), "GetClientRect should have succeeded\n");
    width = rect.right - rect.left;
    height = rect.bottom - rect.top;

    dc = GetDC(hwnd);
    hdc = CreateCompatibleDC ( dc );
    bmp = CreateCompatibleBitmap ( dc, width, height );
    old = SelectObject (hdc, bmp);


    SetWindowOrgEx (hdc, rect.left+10, rect.top+10, &pt);

    status = GdipCreateFromHDC(hdc, &graphics);
    expect(Ok, status);

    status = GdipGetVisibleClipBoundsI(graphics, &boundRect);
    expect(Ok, status);

    ok(boundRect.X==rect.left+10 &&
       boundRect.Y==rect.top+10 &&
       boundRect.Width==width &&
       boundRect.Height==height, "Expected GdipGetVisibleClipBoundsI ok\n");

    status = GdipSetClipRectI(graphics, 0, 0, width, height, CombineModeReplace);
    expect(Ok, status);

    status = GdipGetVisibleClipBoundsI(graphics, &boundRect);
    expect(Ok, status);

    ok(boundRect.X==rect.left+10 &&
       boundRect.Y==rect.top+10 &&
       boundRect.Width==width-10 &&
       boundRect.Height==height-10, "Expected GdipGetVisibleClipBoundsI ok\n");

    GdipDeleteGraphics(graphics);

    SelectObject (hdc, old);
    DeleteObject (bmp);
    DeleteDC (hdc);
    ReleaseDC(hwnd, dc);
}
