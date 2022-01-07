
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_5__ {double Width; } ;
typedef TYPE_1__ RectF ;
typedef double REAL ;
typedef int HDC ;
typedef int GpUnit ;
typedef int GpStringFormat ;
typedef int GpStatus ;
typedef int GpGraphics ;
typedef int GpFontFamily ;
typedef int GpFont ;


 int CreateCompatibleDC (int ) ;
 int DeleteDC (int ) ;
 int FontStyleRegular ;
 int GdipCreateFont (int *,double,int ,int,int **) ;
 int GdipCreateFontFamilyFromName (char const*,int *,int **) ;
 int GdipCreateFromHDC (int ,int **) ;
 int GdipCreateStringFormat (int ,int ,int **) ;
 int GdipDeleteFont (int *) ;
 int GdipDeleteFontFamily (int *) ;
 int GdipDeleteGraphics (int *) ;
 int GdipDeleteStringFormat (int *) ;
 int GdipGetDpiX (int *,double*) ;
 int GdipGetFontSize (int *,double*) ;
 int GdipMeasureString (int *,char const*,int,int *,TYPE_1__*,int *,TYPE_1__*,int *,int *) ;
 int GdipSetPageUnit (int *,int) ;
 int LANG_NEUTRAL ;
 int Ok ;
 int expect (int ,int ) ;
 int expectf_ (double,double,double) ;
 int set_rect_empty (TYPE_1__*) ;
 double units_to_pixels (double,int,double) ;

__attribute__((used)) static void test_measured_extra_space(void)
{
    static const WCHAR tahomaW[] = { 'T','a','h','o','m','a',0 };
    static const WCHAR string[2] = { 'W','W' };
    GpStringFormat *format;
    HDC hdc;
    GpGraphics *graphics;
    GpFontFamily *family;
    GpFont *font;
    GpStatus status;
    GpUnit gfx_unit, font_unit;
    RectF bounds_1, bounds_2, rect;
    REAL margin, font_size, dpi;

    status = GdipCreateStringFormat(0, LANG_NEUTRAL, &format);
    expect(Ok, status);

    status = GdipCreateFontFamilyFromName(tahomaW, ((void*)0), &family);
    expect(Ok, status);
    hdc = CreateCompatibleDC(0);
    status = GdipCreateFromHDC(hdc, &graphics);
    expect(Ok, status);

    status = GdipGetDpiX(graphics, &dpi);
    expect(Ok, status);



    for (font_unit = 3; font_unit <= 6; font_unit++)
    {
        status = GdipCreateFont(family, 1234.0, FontStyleRegular, font_unit, &font);
        expect(Ok, status);

        status = GdipGetFontSize(font, &font_size);
        expect(Ok, status);
        font_size = units_to_pixels(font_size, font_unit, dpi);



        for (gfx_unit = 2; gfx_unit <= 6; gfx_unit++)
        {
            status = GdipSetPageUnit(graphics, gfx_unit);
            expect(Ok, status);


            set_rect_empty(&rect);
            set_rect_empty(&bounds_1);
            status = GdipMeasureString(graphics, string, 1, font, &rect, format, &bounds_1, ((void*)0), ((void*)0));
            expect(Ok, status);

            set_rect_empty(&rect);
            set_rect_empty(&bounds_2);
            status = GdipMeasureString(graphics, string, 2, font, &rect, format, &bounds_2, ((void*)0), ((void*)0));
            expect(Ok, status);


            margin = units_to_pixels(bounds_1.Width - bounds_2.Width / 2.0, gfx_unit, dpi);

            expectf_(font_size / 6.0, margin, font_size / 100.0);
        }

        GdipDeleteFont(font);
    }

    GdipDeleteGraphics(graphics);
    DeleteDC(hdc);
    GdipDeleteFontFamily(family);
    GdipDeleteStringFormat(format);
}
