
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TextRenderingHint ;
typedef int * HDC ;
typedef int GpStatus ;
typedef int GpGraphics ;


 int GdipCreateFromHDC (int *,int **) ;
 int GdipDeleteGraphics (int *) ;
 int GdipGetTextRenderingHint (int *,int *) ;
 int GdipSetTextRenderingHint (int *,scalar_t__) ;
 int * GetDC (int ) ;
 scalar_t__ InvalidParameter ;
 scalar_t__ Ok ;
 int ReleaseDC (int ,int *) ;
 scalar_t__ TextRenderingHintAntiAlias ;
 scalar_t__ TextRenderingHintAntiAliasGridFit ;
 scalar_t__ TextRenderingHintClearTypeGridFit ;
 scalar_t__ TextRenderingHintSystemDefault ;
 int expect (scalar_t__,int ) ;
 int hwnd ;
 int ok (int ,char*) ;

__attribute__((used)) static void test_get_set_textrenderinghint(void)
{
    GpGraphics *graphics;
    HDC hdc = GetDC( hwnd );
    GpStatus status;
    TextRenderingHint hint;

    ok(hdc != ((void*)0), "Expected HDC to be initialized\n");
    status = GdipCreateFromHDC(hdc, &graphics);
    expect(Ok, status);
    ok(graphics != ((void*)0), "Expected graphics to be initialized\n");

    status = GdipGetTextRenderingHint(((void*)0), &hint);
    expect(InvalidParameter, status);

    status = GdipGetTextRenderingHint(graphics, ((void*)0));
    expect(InvalidParameter, status);

    status = GdipSetTextRenderingHint(((void*)0), TextRenderingHintAntiAlias);
    expect(InvalidParameter, status);


    status = GdipSetTextRenderingHint(graphics, TextRenderingHintClearTypeGridFit+1);
    expect(InvalidParameter, status);

    status = GdipGetTextRenderingHint(graphics, &hint);
    expect(Ok, status);
    expect(TextRenderingHintSystemDefault, hint);

    status = GdipSetTextRenderingHint(graphics, TextRenderingHintSystemDefault);
    expect(Ok, status);

    status = GdipGetTextRenderingHint(graphics, &hint);
    expect(Ok, status);
    expect(TextRenderingHintSystemDefault, hint);

    status = GdipSetTextRenderingHint(graphics, TextRenderingHintAntiAliasGridFit);
    expect(Ok, status);

    status = GdipGetTextRenderingHint(graphics, &hint);
    expect(Ok, status);
    expect(TextRenderingHintAntiAliasGridFit, hint);

    GdipDeleteGraphics(graphics);

    ReleaseDC(hwnd, hdc);
}
