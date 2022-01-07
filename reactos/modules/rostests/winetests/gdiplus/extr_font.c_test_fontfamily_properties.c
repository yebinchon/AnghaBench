
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT16 ;
typedef scalar_t__ GpStatus ;
typedef int GpFontFamily ;


 scalar_t__ FontFamilyNotFound ;
 int FontStyleRegular ;
 scalar_t__ GdipCreateFontFamilyFromName (int ,int *,int **) ;
 int GdipDeleteFontFamily (int *) ;
 scalar_t__ GdipGetCellAscent (int *,int ,int*) ;
 scalar_t__ GdipGetCellDescent (int *,int ,int*) ;
 scalar_t__ GdipGetEmHeight (int *,int ,int*) ;
 scalar_t__ GdipGetLineSpacing (int *,int ,int*) ;
 int Ok ;
 int Tahoma ;
 int TimesNewRoman ;
 int expect (int ,scalar_t__) ;
 int ok (int,char*,int) ;
 int skip (char*) ;

__attribute__((used)) static void test_fontfamily_properties (void)
{
    GpFontFamily* FontFamily = ((void*)0);
    GpStatus stat;
    UINT16 result = 0;

    stat = GdipCreateFontFamilyFromName(Tahoma, ((void*)0), &FontFamily);
    expect(Ok, stat);

    stat = GdipGetLineSpacing(FontFamily, FontStyleRegular, &result);
    expect(Ok, stat);
    ok (result == 2472, "Expected 2472, got %d\n", result);
    result = 0;
    stat = GdipGetEmHeight(FontFamily, FontStyleRegular, &result);
    expect(Ok, stat);
    ok(result == 2048, "Expected 2048, got %d\n", result);
    result = 0;
    stat = GdipGetCellAscent(FontFamily, FontStyleRegular, &result);
    expect(Ok, stat);
    ok(result == 2049, "Expected 2049, got %d\n", result);
    result = 0;
    stat = GdipGetCellDescent(FontFamily, FontStyleRegular, &result);
    expect(Ok, stat);
    ok(result == 423, "Expected 423, got %d\n", result);
    GdipDeleteFontFamily(FontFamily);

    stat = GdipCreateFontFamilyFromName(TimesNewRoman, ((void*)0), &FontFamily);
    if(stat == FontFamilyNotFound)
        skip("Times New Roman not installed\n");
    else
    {
        result = 0;
        stat = GdipGetLineSpacing(FontFamily, FontStyleRegular, &result);
        expect(Ok, stat);
        ok(result == 2355, "Expected 2355, got %d\n", result);
        result = 0;
        stat = GdipGetEmHeight(FontFamily, FontStyleRegular, &result);
        expect(Ok, stat);
        ok(result == 2048, "Expected 2048, got %d\n", result);
        result = 0;
        stat = GdipGetCellAscent(FontFamily, FontStyleRegular, &result);
        expect(Ok, stat);
        ok(result == 1825, "Expected 1825, got %d\n", result);
        result = 0;
        stat = GdipGetCellDescent(FontFamily, FontStyleRegular, &result);
        expect(Ok, stat);
        ok(result == 443, "Expected 443 got %d\n", result);
        GdipDeleteFontFamily(FontFamily);
    }
}
