#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_5__ {double Width; } ;
typedef  TYPE_1__ RectF ;
typedef  double REAL ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int GpUnit ;
typedef  int /*<<< orphan*/  GpStringFormat ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpGraphics ;
typedef  int /*<<< orphan*/  GpFontFamily ;
typedef  int /*<<< orphan*/  GpFont ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FontStyleRegular ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,double,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,double*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,double*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  LANG_NEUTRAL ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (double,double,double) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 double FUNC17 (double,int,double) ; 

__attribute__((used)) static void FUNC18(void)
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

    status = FUNC5(0, LANG_NEUTRAL, &format);
    FUNC14(Ok, status);

    status = FUNC3(tahomaW, NULL, &family);
    FUNC14(Ok, status);
    hdc = FUNC0(0);
    status = FUNC4(hdc, &graphics);
    FUNC14(Ok, status);

    status = FUNC10(graphics, &dpi);
    FUNC14(Ok, status);

    /* UnitPixel = 2, UnitPoint = 3, UnitInch = 4, UnitDocument = 5, UnitMillimeter = 6 */
    /* UnitPixel as a font base unit is not tested because it differs in behaviour */
    for (font_unit = 3; font_unit <= 6; font_unit++)
    {
        status = FUNC2(family, 1234.0, FontStyleRegular, font_unit, &font);
        FUNC14(Ok, status);

        status = FUNC11(font, &font_size);
        FUNC14(Ok, status);
        font_size = FUNC17(font_size, font_unit, dpi);
        /*trace("font size/6 = %f pixels\n", font_size / 6.0);*/

        /* UnitPixel = 2, UnitPoint = 3, UnitInch = 4, UnitDocument = 5, UnitMillimeter = 6 */
        for (gfx_unit = 2; gfx_unit <= 6; gfx_unit++)
        {
            status = FUNC13(graphics, gfx_unit);
            FUNC14(Ok, status);

            /* bounds.width of 1 glyph: [margin]+[width]+[margin] */
            FUNC16(&rect);
            FUNC16(&bounds_1);
            status = FUNC12(graphics, string, 1, font, &rect, format, &bounds_1, NULL, NULL);
            FUNC14(Ok, status);
            /* bounds.width of 2 identical glyphs: [margin]+[width]+[width]+[margin] */
            FUNC16(&rect);
            FUNC16(&bounds_2);
            status = FUNC12(graphics, string, 2, font, &rect, format, &bounds_2, NULL, NULL);
            FUNC14(Ok, status);

            /* margin = [bounds.width of 1] - [bounds.width of 2] / 2*/
            margin = FUNC17(bounds_1.Width - bounds_2.Width / 2.0, gfx_unit, dpi);
            /*trace("margin %f pixels\n", margin);*/
            FUNC15(font_size / 6.0, margin, font_size / 100.0);
        }

        FUNC6(font);
    }

    FUNC8(graphics);
    FUNC1(hdc);
    FUNC7(family);
    FUNC9(format);
}