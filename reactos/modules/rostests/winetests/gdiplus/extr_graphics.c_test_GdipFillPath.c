
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HDC ;
typedef int GpStatus ;
typedef int GpSolidFill ;
typedef int GpPath ;
typedef int GpGraphics ;
typedef int GpBrush ;
typedef int ARGB ;


 int FillModeAlternate ;
 int GdipAddPathLineI (int *,int,int,int,int) ;
 int GdipAddPathRectangle (int *,int ,int ,int,int) ;
 int GdipCreateFromHDC (int *,int **) ;
 int GdipCreatePath (int ,int **) ;
 int GdipCreateSolidFill (int ,int **) ;
 int GdipDeleteBrush (int *) ;
 int GdipDeleteGraphics (int *) ;
 int GdipDeletePath (int *) ;
 int GdipFillPath (int *,int *,int *) ;
 int GdipResetPath (int *) ;
 int * GetDC (int ) ;
 int Ok ;
 int ReleaseDC (int ,int *) ;
 int expect (int ,int ) ;
 int hwnd ;
 int ok (int ,char*) ;

__attribute__((used)) static void test_GdipFillPath(void)
{
    GpStatus status;
    GpGraphics *graphics;
    GpSolidFill *brush;
    GpPath *path;
    HDC hdc = GetDC(hwnd);

    ok(hdc != ((void*)0), "Expected HDC to be initialized\n");
    status = GdipCreateFromHDC(hdc, &graphics);
    expect(Ok, status);
    ok(graphics != ((void*)0), "Expected graphics to be initialized\n");
    status = GdipCreateSolidFill((ARGB)0xffffffff, &brush);
    expect(Ok, status);
    ok(brush != ((void*)0), "Expected brush to be initialized\n");
    status = GdipCreatePath(FillModeAlternate, &path);
    expect(Ok, status);
    ok(path != ((void*)0), "Expected path to be initialized\n");


    GdipResetPath(path);
    status = GdipFillPath(graphics, (GpBrush *)brush, path);
    expect(Ok, status);


    GdipResetPath(path);
    status = GdipAddPathLineI(path, 0, 0, 2, 2);
    expect(Ok, status);
    status = GdipAddPathLineI(path, 2, 2, 4, 0);
    expect(Ok, status);
    status = GdipFillPath(graphics, (GpBrush *)brush, path);
    expect(Ok, status);


    GdipResetPath(path);
    status = GdipAddPathRectangle(path, 0, 0, 4, 4);
    expect(Ok, status);
    status = GdipFillPath(graphics, (GpBrush *)brush, path);
    expect(Ok, status);

    GdipDeletePath(path);
    GdipDeleteBrush((GpBrush *)brush);
    GdipDeleteGraphics(graphics);
    ReleaseDC(hwnd, hdc);
}
