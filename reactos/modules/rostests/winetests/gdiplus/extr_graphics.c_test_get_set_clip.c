
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double X; double Y; double Height; double Width; } ;
typedef int HDC ;
typedef int GpStatus ;
typedef int GpRegion ;
typedef TYPE_1__ GpRectF ;
typedef int GpGraphics ;
typedef int BOOL ;


 int CombineModeReplace ;
 int FALSE ;
 int GdipCreateFromHDC (int ,int **) ;
 int GdipCreateRegionRect (TYPE_1__*,int **) ;
 int GdipDeleteGraphics (int *) ;
 int GdipDeleteRegion (int *) ;
 int GdipGetClip (int *,int *) ;
 int GdipIsEmptyRegion (int *,int *,int *) ;
 int GdipIsInfiniteRegion (int *,int *,int *) ;
 int GdipResetClip (int *) ;
 int GdipSetClipPath (int *,int *,int ) ;
 int GdipSetClipRegion (int *,int *,int ) ;
 int GdipSetEmpty (int *) ;
 int GetDC (int ) ;
 int InvalidParameter ;
 int Ok ;
 int ReleaseDC (int ,int ) ;
 int TRUE ;
 int expect (int ,int ) ;
 int hwnd ;

__attribute__((used)) static void test_get_set_clip(void)
{
    GpStatus status;
    GpGraphics *graphics = ((void*)0);
    HDC hdc = GetDC( hwnd );
    GpRegion *clip;
    GpRectF rect;
    BOOL res;

    status = GdipCreateFromHDC(hdc, &graphics);
    expect(Ok, status);

    rect.X = rect.Y = 0.0;
    rect.Height = rect.Width = 100.0;

    status = GdipCreateRegionRect(&rect, &clip);
    expect(Ok, status);


    status = GdipGetClip(((void*)0), ((void*)0));
    expect(InvalidParameter, status);
    status = GdipGetClip(graphics, ((void*)0));
    expect(InvalidParameter, status);
    status = GdipGetClip(((void*)0), clip);
    expect(InvalidParameter, status);

    status = GdipSetClipRegion(((void*)0), ((void*)0), CombineModeReplace);
    expect(InvalidParameter, status);
    status = GdipSetClipRegion(graphics, ((void*)0), CombineModeReplace);
    expect(InvalidParameter, status);

    status = GdipSetClipPath(((void*)0), ((void*)0), CombineModeReplace);
    expect(InvalidParameter, status);
    status = GdipSetClipPath(graphics, ((void*)0), CombineModeReplace);
    expect(InvalidParameter, status);

    res = FALSE;
    status = GdipGetClip(graphics, clip);
    expect(Ok, status);
    status = GdipIsInfiniteRegion(clip, graphics, &res);
    expect(Ok, status);
    expect(TRUE, res);


    res = FALSE;
    status = GdipResetClip(graphics);
    expect(Ok, status);
    status = GdipGetClip(graphics, clip);
    expect(Ok, status);
    status = GdipIsInfiniteRegion(clip, graphics, &res);
    expect(Ok, status);
    expect(TRUE, res);


    status = GdipSetEmpty(clip);
    expect(Ok, status);
    status = GdipSetClipRegion(graphics, clip, CombineModeReplace);
    expect(Ok, status);

    status = GdipGetClip(graphics, clip);
    expect(Ok, status);
    res = FALSE;
    status = GdipIsEmptyRegion(clip, graphics, &res);
    expect(Ok, status);
    expect(TRUE, res);
    status = GdipResetClip(graphics);
    expect(Ok, status);
    status = GdipGetClip(graphics, clip);
    expect(Ok, status);
    res = FALSE;
    status = GdipIsInfiniteRegion(clip, graphics, &res);
    expect(Ok, status);
    expect(TRUE, res);

    GdipDeleteRegion(clip);

    GdipDeleteGraphics(graphics);
    ReleaseDC(hwnd, hdc);
}
