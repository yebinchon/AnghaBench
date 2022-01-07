
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ Unit ;
typedef scalar_t__ UINT ;
typedef int REAL ;
typedef scalar_t__ GpStatus ;
typedef int GpFontFamily ;
typedef int GpFont ;


 scalar_t__ FontFamilyNotFound ;
 int FontStyleRegular ;
 scalar_t__ GdipCreateFont (int *,int,int ,scalar_t__,int **) ;
 scalar_t__ GdipCreateFontFamilyFromName (int ,int *,int **) ;
 scalar_t__ GdipDeleteFont (int *) ;
 scalar_t__ GdipDeleteFontFamily (int *) ;
 scalar_t__ GdipGetFamily (int *,int **) ;
 scalar_t__ GdipGetFamilyName (int *,int *,int ) ;
 int GdipGetFontSize (int *,int*) ;
 scalar_t__ GdipGetFontUnit (int *,scalar_t__*) ;
 scalar_t__ InvalidParameter ;
 int LF_FACESIZE ;
 scalar_t__ Ok ;
 int Tahoma ;
 scalar_t__ UnitDisplay ;
 scalar_t__ UnitMillimeter ;
 scalar_t__ UnitPoint ;
 scalar_t__ UnitWorld ;
 int expect (scalar_t__,scalar_t__) ;
 scalar_t__ lstrcmpiW (int ,int *) ;
 int nonexistent ;
 int ok (int,char*,scalar_t__,...) ;
 scalar_t__ wine_dbgstr_w (int *) ;

__attribute__((used)) static void test_createfont(void)
{
    GpFontFamily* fontfamily = ((void*)0), *fontfamily2;
    GpFont* font = ((void*)0);
    GpStatus stat;
    Unit unit;
    UINT i;
    REAL size;
    WCHAR familyname[LF_FACESIZE];

    stat = GdipCreateFontFamilyFromName(nonexistent, ((void*)0), &fontfamily);
    expect (FontFamilyNotFound, stat);
    stat = GdipDeleteFont(font);
    expect (InvalidParameter, stat);
    stat = GdipCreateFontFamilyFromName(Tahoma, ((void*)0), &fontfamily);
    expect (Ok, stat);
    stat = GdipCreateFont(fontfamily, 12, FontStyleRegular, UnitPoint, &font);
    expect (Ok, stat);
    stat = GdipGetFontUnit (font, &unit);
    expect (Ok, stat);
    expect (UnitPoint, unit);

    stat = GdipGetFamily(font, &fontfamily2);
    expect(Ok, stat);
    stat = GdipGetFamilyName(fontfamily2, familyname, 0);
    expect(Ok, stat);
    ok (lstrcmpiW(Tahoma, familyname) == 0, "Expected Tahoma, got %s\n",
            wine_dbgstr_w(familyname));
    stat = GdipDeleteFontFamily(fontfamily2);
    expect(Ok, stat);


    GdipGetFontSize(font, &size);
    ok (size == 12, "Expected 12, got %f\n", size);
    GdipDeleteFont(font);


    for (i = UnitWorld; i <=UnitMillimeter; i++)
    {
        if (i == UnitDisplay) continue;
        stat = GdipCreateFont(fontfamily, 24, FontStyleRegular, i, &font);
        expect(Ok, stat);
        GdipGetFontSize (font, &size);
        ok (size == 24, "Expected 24, got %f (with unit: %d)\n", size, i);
        stat = GdipGetFontUnit (font, &unit);
        ok (stat == Ok, "Failed to get font unit, %d.\n", stat);
        expect (i, unit);
        GdipDeleteFont(font);
    }

    GdipDeleteFontFamily(fontfamily);
}
