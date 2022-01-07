
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Height; int Width; int Y; int X; } ;
typedef TYPE_1__ RectF ;
typedef int HRGN ;
typedef int HDC ;
typedef int GpStatus ;
typedef int GpGraphics ;
typedef int BOOL ;


 int CombineModeReplace ;
 int CreateRectRgn (int ,int ,int,int) ;
 int DeleteObject (int ) ;
 int FALSE ;
 int GdipCreateFromHDC (int ,int **) ;
 int GdipDeleteGraphics (int *) ;
 int GdipGetVisibleClipBounds (int *,TYPE_1__*) ;
 int GdipIsVisiblePoint (int *,int,int,int *) ;
 int GdipSetClipHrgn (int *,int ,int ) ;
 int GetDC (int ) ;
 int Ok ;
 int ReleaseDC (int ,int ) ;
 int SetViewportOrgEx (int ,int,int,int *) ;
 int TRUE ;
 int expect (int ,int ) ;
 int expectf (double,int ) ;
 int hwnd ;

__attribute__((used)) static void test_cliphrgn_transform(void)
{
    HDC hdc;
    GpStatus status;
    GpGraphics *graphics;
    HRGN rgn;
    RectF rectf;
    BOOL res;

    hdc = GetDC(hwnd);

    SetViewportOrgEx(hdc, 10, 10, ((void*)0));

    status = GdipCreateFromHDC(hdc, &graphics);
    expect(Ok, status);

    rgn = CreateRectRgn(0, 0, 100, 100);

    status = GdipSetClipHrgn(graphics, rgn, CombineModeReplace);
    expect(Ok, status);

    status = GdipGetVisibleClipBounds(graphics, &rectf);
    expect(Ok, status);
    expectf(-10.0, rectf.X);
    expectf(-10.0, rectf.Y);
    expectf(100.0, rectf.Width);
    expectf(100.0, rectf.Height);

    status = GdipIsVisiblePoint(graphics, 95, 95, &res);
    expect(Ok, status);
    expect(FALSE, res);

    status = GdipIsVisiblePoint(graphics, -5, -5, &res);
    expect(Ok, status);
    expect(TRUE, res);

    DeleteObject(rgn);

    GdipDeleteGraphics(graphics);

    SetViewportOrgEx(hdc, 0, 0, ((void*)0));

    ReleaseDC(hwnd, hdc);
}
