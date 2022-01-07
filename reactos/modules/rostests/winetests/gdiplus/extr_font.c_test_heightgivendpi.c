
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Unit ;
typedef int REAL ;
typedef int GpStatus ;
typedef int GpFontFamily ;
typedef int GpFont ;


 int FontStyleRegular ;
 int GdipCreateFont (int *,int,int ,int ,int **) ;
 int GdipCreateFontFamilyFromName (int ,int *,int **) ;
 int GdipDeleteFont (int *) ;
 int GdipDeleteFontFamily (int *) ;
 int GdipGetFontHeightGivenDPI (int *,int,int*) ;
 int GdipGetFontUnit (int *,int *) ;
 int InvalidParameter ;
 int Ok ;
 int Tahoma ;
 int UnitDocument ;
 int UnitInch ;
 int UnitMillimeter ;
 int UnitPixel ;
 int UnitPoint ;
 int UnitWorld ;
 int expect (int ,int ) ;
 int expectf (double,int) ;

__attribute__((used)) static void test_heightgivendpi(void)
{
    GpStatus stat;
    GpFont* font = ((void*)0);
    GpFontFamily* fontfamily = ((void*)0);
    REAL height;
    Unit unit;

    stat = GdipCreateFontFamilyFromName(Tahoma, ((void*)0), &fontfamily);
    expect(Ok, stat);

    stat = GdipCreateFont(fontfamily, 30, FontStyleRegular, UnitPixel, &font);
    expect(Ok, stat);

    stat = GdipGetFontHeightGivenDPI(((void*)0), 96, &height);
    expect(InvalidParameter, stat);

    stat = GdipGetFontHeightGivenDPI(font, 96, ((void*)0));
    expect(InvalidParameter, stat);

    stat = GdipGetFontHeightGivenDPI(font, 96, &height);
    expect(Ok, stat);
    expectf(36.210938, height);
    GdipDeleteFont(font);

    height = 12345;
    stat = GdipCreateFont(fontfamily, 30, FontStyleRegular, UnitWorld, &font);
    expect(Ok, stat);

    stat = GdipGetFontUnit(font, &unit);
    expect(Ok, stat);
    expect(UnitWorld, unit);

    stat = GdipGetFontHeightGivenDPI(font, 96, &height);
    expect(Ok, stat);
    expectf(36.210938, height);
    GdipDeleteFont(font);

    height = 12345;
    stat = GdipCreateFont(fontfamily, 30, FontStyleRegular, UnitPoint, &font);
    expect(Ok, stat);
    stat = GdipGetFontHeightGivenDPI(font, 96, &height);
    expect(Ok, stat);
    expectf(48.281250, height);
    GdipDeleteFont(font);

    height = 12345;
    stat = GdipCreateFont(fontfamily, 30, FontStyleRegular, UnitInch, &font);
    expect(Ok, stat);

    stat = GdipGetFontUnit(font, &unit);
    expect(Ok, stat);
    expect(UnitInch, unit);

    stat = GdipGetFontHeightGivenDPI(font, 96, &height);
    expect(Ok, stat);
    expectf(3476.250000, height);
    GdipDeleteFont(font);

    height = 12345;
    stat = GdipCreateFont(fontfamily, 30, FontStyleRegular, UnitDocument, &font);
    expect(Ok, stat);

    stat = GdipGetFontUnit(font, &unit);
    expect(Ok, stat);
    expect(UnitDocument, unit);

    stat = GdipGetFontHeightGivenDPI(font, 96, &height);
    expect(Ok, stat);
    expectf(11.587500, height);
    GdipDeleteFont(font);

    height = 12345;
    stat = GdipCreateFont(fontfamily, 30, FontStyleRegular, UnitMillimeter, &font);
    expect(Ok, stat);

    stat = GdipGetFontUnit(font, &unit);
    expect(Ok, stat);
    expect(UnitMillimeter, unit);

    stat = GdipGetFontHeightGivenDPI(font, 96, &height);
    expect(Ok, stat);
    expectf(136.860245, height);
    GdipDeleteFont(font);

    GdipDeleteFontFamily(fontfamily);
}
