
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ GpStatus ;
typedef int GpFontFamily ;


 scalar_t__ FontFamilyNotFound ;
 scalar_t__ GdipGetGenericFontFamilyMonospace (int **) ;
 scalar_t__ GdipGetGenericFontFamilySansSerif (int **) ;
 scalar_t__ GdipGetGenericFontFamilySerif (int **) ;
 int LF_FACESIZE ;
 int Ok ;
 int check_family (char*,int *,int *) ;
 int expect (int ,scalar_t__) ;
 scalar_t__ lstrcmpiW (int *,int *) ;
 int ok (int,char*,int ) ;
 scalar_t__ strcmp (int ,char*) ;
 int trace (char*) ;
 int wine_dbgstr_w (int *) ;
 int winetest_platform ;

__attribute__((used)) static void test_getgenerics (void)
{
    GpStatus stat;
    GpFontFamily *family;
    WCHAR sansname[LF_FACESIZE], serifname[LF_FACESIZE], mononame[LF_FACESIZE];
    int missingfonts = 0;

    stat = GdipGetGenericFontFamilySansSerif(&family);
    expect (Ok, stat);
    if (stat == FontFamilyNotFound)
        missingfonts = 1;
    else
        check_family("Sans Serif", family, sansname);

    stat = GdipGetGenericFontFamilySerif(&family);
    expect (Ok, stat);
    if (stat == FontFamilyNotFound)
        missingfonts = 1;
    else
        check_family("Serif", family, serifname);

    stat = GdipGetGenericFontFamilyMonospace(&family);
    expect (Ok, stat);
    if (stat == FontFamilyNotFound)
        missingfonts = 1;
    else
        check_family("Monospace", family, mononame);

    if (missingfonts && strcmp(winetest_platform, "wine") == 0)
        trace("You may need to install either the Microsoft Web Fonts or the Liberation Fonts\n");


    ok(lstrcmpiW(sansname, serifname) != 0, "Sans Serif and Serif families should be different: %s\n", wine_dbgstr_w(sansname));
    ok(lstrcmpiW(sansname, mononame) != 0, "Sans Serif and Monospace families should be different: %s\n", wine_dbgstr_w(sansname));
    ok(lstrcmpiW(serifname, mononame) != 0, "Serif and Monospace families should be different: %s\n", wine_dbgstr_w(serifname));
}
