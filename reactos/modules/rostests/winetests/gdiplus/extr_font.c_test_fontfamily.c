
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int itsName ;
typedef int WCHAR ;
typedef scalar_t__ GpStatus ;
typedef int GpFontFamily ;


 scalar_t__ FontFamilyNotFound ;
 scalar_t__ GdipCloneFontFamily (int *,int **) ;
 scalar_t__ GdipCreateFontFamilyFromName (int ,int *,int **) ;
 int GdipDeleteFontFamily (int *) ;
 scalar_t__ GdipGetFamilyName (int *,int *,int ) ;
 scalar_t__ InvalidParameter ;
 int LANG_NEUTRAL ;
 int LF_FACESIZE ;
 int MSSansSerif ;
 scalar_t__ Ok ;
 int Tahoma ;
 int ZeroMemory (int *,int) ;
 int expect (scalar_t__,scalar_t__) ;
 scalar_t__ lstrcmpiW (int *,int ) ;
 int nonexistent ;

__attribute__((used)) static void test_fontfamily (void)
{
    GpFontFamily *family, *clonedFontFamily;
    WCHAR itsName[LF_FACESIZE];
    GpStatus stat;


    stat = GdipCreateFontFamilyFromName (Tahoma , ((void*)0), ((void*)0));
    expect (InvalidParameter, stat);




    stat = GdipCreateFontFamilyFromName (nonexistent, ((void*)0), &family);
    expect (FontFamilyNotFound, stat);


    stat = GdipCreateFontFamilyFromName (MSSansSerif, ((void*)0), &family);
    expect (FontFamilyNotFound, stat);
    if(stat == Ok) GdipDeleteFontFamily(family);

    stat = GdipCreateFontFamilyFromName (Tahoma, ((void*)0), &family);
    expect (Ok, stat);

    stat = GdipGetFamilyName (family, itsName, LANG_NEUTRAL);
    expect (Ok, stat);
    expect (0, lstrcmpiW(itsName, Tahoma));

    if (0)
    {

        stat = GdipGetFamilyName (family, ((void*)0), LANG_NEUTRAL);
        expect (Ok, stat);
    }


    ZeroMemory (itsName, sizeof(itsName));
    stat = GdipCloneFontFamily(family, &clonedFontFamily);
    expect (Ok, stat);
    GdipDeleteFontFamily(family);
    stat = GdipGetFamilyName(clonedFontFamily, itsName, LANG_NEUTRAL);
    expect(Ok, stat);
    expect(0, lstrcmpiW(itsName, Tahoma));

    GdipDeleteFontFamily(clonedFontFamily);
}
