
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int INT ;
typedef int GpStatus ;
typedef int GpFontFamily ;
typedef int GpFontCollection ;
typedef int GpFont ;


 int DELETE_FONTFILE (char*) ;
 int FontStyleRegular ;
 int GdipCreateFont (int *,double,int ,int ,int **) ;
 int GdipDeleteFont (int *) ;
 int GdipDeletePrivateFontCollection (int **) ;
 int GdipGetFamilyName (int *,char*,int ) ;
 int GdipGetFontCollectionFamilyCount (int *,int*) ;
 int GdipGetFontCollectionFamilyList (int *,int,int **,int*) ;
 int GdipNewPrivateFontCollection (int **) ;
 int GdipPrivateAddFontFile (int *,char*) ;
 int LANG_NEUTRAL ;
 int LF_FACESIZE ;
 int MAX_PATH ;
 int Ok ;
 int UnitPixel ;
 int create_testfontfile (char const*,int,char*) ;
 int ok (int,char*,int) ;

__attribute__((used)) static void test_long_name(void)
{
    WCHAR path[MAX_PATH];
    static const WCHAR path_longname[] = {'w','i','n','e','_','l','o','n','g','n','a','m','e','.','t','t','f',0};
    GpStatus stat;
    GpFontCollection *fonts;
    INT num_families;
    GpFontFamily *family;
    WCHAR family_name[LF_FACESIZE];
    GpFont *font;

    stat = GdipNewPrivateFontCollection(&fonts);
    ok(stat == Ok, "GdipNewPrivateFontCollection failed: %d\n", stat);

    create_testfontfile(path_longname, 1, path);

    stat = GdipPrivateAddFontFile(fonts, path);
    ok(stat == Ok, "GdipPrivateAddFontFile failed: %d\n", stat);

    stat = GdipGetFontCollectionFamilyCount(fonts, &num_families);
    ok(stat == Ok, "GdipGetFontCollectionFamilyCount failed: %d\n", stat);

    ok(num_families == 1, "expected num_families to be 1, got %d\n", num_families);

    stat = GdipGetFontCollectionFamilyList(fonts, num_families, &family, &num_families);
    ok(stat == Ok, "GdipGetFontCollectionFamilyList failed: %d\n", stat);

    stat = GdipGetFamilyName(family, family_name, LANG_NEUTRAL);
    ok(stat == Ok, "GdipGetFamilyName failed: %d\n", stat);

    stat = GdipCreateFont(family, 256.0, FontStyleRegular, UnitPixel, &font);
    ok(stat == Ok, "GdipCreateFont failed: %d\n", stat);



    stat = GdipDeleteFont(font);
    ok(stat == Ok, "GdipDeleteFont failed: %d\n", stat);

    stat = GdipDeletePrivateFontCollection(&fonts);
    ok(stat == Ok, "GdipDeletePrivateFontCollection failed: %d\n", stat);

    DELETE_FONTFILE(path);
}
