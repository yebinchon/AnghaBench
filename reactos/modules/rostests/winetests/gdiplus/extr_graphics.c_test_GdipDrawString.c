
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int logfont ;
typedef char WCHAR ;
struct TYPE_10__ {int lfHeight; int lfCharSet; int lfFaceName; } ;
struct TYPE_9__ {int member_0; int member_1; } ;
struct TYPE_8__ {int Height; scalar_t__ Width; scalar_t__ Y; scalar_t__ X; } ;
typedef TYPE_1__ RectF ;
typedef TYPE_2__ PointF ;
typedef TYPE_3__ LOGFONTA ;
typedef int HDC ;
typedef int GpStringFormat ;
typedef scalar_t__ GpStatus ;
typedef int GpSolidFill ;
typedef int GpMatrix ;
typedef int GpGraphics ;
typedef int GpFont ;
typedef int GpBrush ;
typedef int ARGB ;


 int DEFAULT_CHARSET ;
 int DriverStringOptionsCmapLookup ;
 scalar_t__ FileNotFound ;
 scalar_t__ GdipCreateFontFromLogfontA (int ,TYPE_3__*,int **) ;
 scalar_t__ GdipCreateFromHDC (int ,int **) ;
 scalar_t__ GdipCreateMatrix (int **) ;
 scalar_t__ GdipCreateSolidFill (int ,int **) ;
 scalar_t__ GdipCreateStringFormat (int ,int ,int **) ;
 int GdipDeleteBrush (int *) ;
 int GdipDeleteFont (int *) ;
 int GdipDeleteGraphics (int *) ;
 int GdipDeleteMatrix (int *) ;
 int GdipDeleteStringFormat (int *) ;
 scalar_t__ GdipDrawDriverString (int *,char const*,int,int *,int *,TYPE_2__ const*,int,int *) ;
 scalar_t__ GdipDrawString (int *,char const*,int,int *,TYPE_1__*,int *,int *) ;
 int GetDC (int ) ;
 int InvalidParameter ;
 scalar_t__ NotTrueTypeFont ;
 int Ok ;
 int ReleaseDC (int ,int ) ;
 int expect (int ,scalar_t__) ;
 int hwnd ;
 int memset (TYPE_3__*,int ,int) ;
 int skip (char*) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void test_GdipDrawString(void)
{
    GpStatus status;
    GpGraphics *graphics = ((void*)0);
    GpFont *fnt = ((void*)0);
    RectF rect;
    GpStringFormat *format;
    GpBrush *brush;
    LOGFONTA logfont;
    HDC hdc = GetDC( hwnd );
    static const WCHAR string[] = {'T','e','s','t',0};
    static const PointF positions[4] = {{0,0}, {1,1}, {2,2}, {3,3}};
    GpMatrix *matrix;

    memset(&logfont,0,sizeof(logfont));
    strcpy(logfont.lfFaceName,"Arial");
    logfont.lfHeight = 12;
    logfont.lfCharSet = DEFAULT_CHARSET;

    status = GdipCreateFromHDC(hdc, &graphics);
    expect(Ok, status);

    status = GdipCreateFontFromLogfontA(hdc, &logfont, &fnt);
    if (status == NotTrueTypeFont || status == FileNotFound)
    {
        skip("Arial not installed.\n");
        return;
    }
    expect(Ok, status);

    status = GdipCreateSolidFill((ARGB)0xdeadbeef, (GpSolidFill**)&brush);
    expect(Ok, status);

    status = GdipCreateStringFormat(0,0,&format);
    expect(Ok, status);

    rect.X = 0;
    rect.Y = 0;
    rect.Width = 0;
    rect.Height = 12;

    status = GdipDrawString(graphics, string, 4, fnt, &rect, format, brush);
    expect(Ok, status);

    status = GdipCreateMatrix(&matrix);
    expect(Ok, status);

    status = GdipDrawDriverString(((void*)0), string, 4, fnt, brush, positions, DriverStringOptionsCmapLookup, matrix);
    expect(InvalidParameter, status);

    status = GdipDrawDriverString(graphics, ((void*)0), 4, fnt, brush, positions, DriverStringOptionsCmapLookup, matrix);
    expect(InvalidParameter, status);

    status = GdipDrawDriverString(graphics, string, 4, ((void*)0), brush, positions, DriverStringOptionsCmapLookup, matrix);
    expect(InvalidParameter, status);

    status = GdipDrawDriverString(graphics, string, 4, fnt, ((void*)0), positions, DriverStringOptionsCmapLookup, matrix);
    expect(InvalidParameter, status);

    status = GdipDrawDriverString(graphics, string, 4, fnt, brush, ((void*)0), DriverStringOptionsCmapLookup, matrix);
    expect(InvalidParameter, status);

    status = GdipDrawDriverString(graphics, string, 4, fnt, brush, positions, DriverStringOptionsCmapLookup|0x10, matrix);
    expect(Ok, status);

    status = GdipDrawDriverString(graphics, string, 4, fnt, brush, positions, DriverStringOptionsCmapLookup, ((void*)0));
    expect(Ok, status);

    status = GdipDrawDriverString(graphics, string, 4, fnt, brush, positions, DriverStringOptionsCmapLookup, matrix);
    expect(Ok, status);

    GdipDeleteMatrix(matrix);
    GdipDeleteGraphics(graphics);
    GdipDeleteBrush(brush);
    GdipDeleteFont(fnt);
    GdipDeleteStringFormat(format);

    ReleaseDC(hwnd, hdc);
}
