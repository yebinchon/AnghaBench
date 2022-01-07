
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WCHAR ;
typedef scalar_t__ GpStatus ;
typedef int GpFontFamily ;
typedef int GpFont ;


 int FontStyleRegular ;
 scalar_t__ GdipCreateFont (int *,int,int ,int ,int **) ;
 scalar_t__ GdipDeleteFont (int *) ;
 scalar_t__ GdipDeleteFontFamily (int *) ;
 scalar_t__ GdipGetFamilyName (int *,scalar_t__*,int ) ;
 int LANG_NEUTRAL ;
 scalar_t__ Ok ;
 int UnitPixel ;
 int ok (int,char*,char const*,scalar_t__) ;

__attribute__((used)) static void check_family(const char* context, GpFontFamily *family, WCHAR *name)
{
    GpStatus stat;
    GpFont* font;

    *name = 0;
    stat = GdipGetFamilyName(family, name, LANG_NEUTRAL);
    ok(stat == Ok, "could not get the %s family name: %.8x\n", context, stat);

    stat = GdipCreateFont(family, 12, FontStyleRegular, UnitPixel, &font);
    ok(stat == Ok, "could not create a font for the %s family: %.8x\n", context, stat);
    if (stat == Ok)
    {
        stat = GdipDeleteFont(font);
        ok(stat == Ok, "could not delete the %s family font: %.8x\n", context, stat);
    }

    stat = GdipDeleteFontFamily(family);
    ok(stat == Ok, "could not delete the %s family: %.8x\n", context, stat);
}
