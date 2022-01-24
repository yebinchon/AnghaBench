#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char WCHAR ;
typedef  int INT ;
typedef  int GpStatus ;
typedef  int /*<<< orphan*/  GpFontFamily ;
typedef  int /*<<< orphan*/  GpFontCollection ;
typedef  int /*<<< orphan*/  GpFont ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FontStyleRegular ; 
 int FUNC1 (int /*<<< orphan*/ *,double,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int*) ; 
 int FUNC7 (int /*<<< orphan*/ **) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  LANG_NEUTRAL ; 
 int LF_FACESIZE ; 
 int MAX_PATH ; 
 int Ok ; 
 int /*<<< orphan*/  UnitPixel ; 
 int /*<<< orphan*/  FUNC9 (char const*,int,char*) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,int) ; 

__attribute__((used)) static void FUNC11(void)
{
    WCHAR path[MAX_PATH];
    static const WCHAR path_longname[] = {'w','i','n','e','_','l','o','n','g','n','a','m','e','.','t','t','f',0};
    GpStatus stat;
    GpFontCollection *fonts;
    INT num_families;
    GpFontFamily *family;
    WCHAR family_name[LF_FACESIZE];
    GpFont *font;

    stat = FUNC7(&fonts);
    FUNC10(stat == Ok, "GdipNewPrivateFontCollection failed: %d\n", stat);

    FUNC9(path_longname, 1, path);

    stat = FUNC8(fonts, path);
    FUNC10(stat == Ok, "GdipPrivateAddFontFile failed: %d\n", stat);

    stat = FUNC5(fonts, &num_families);
    FUNC10(stat == Ok, "GdipGetFontCollectionFamilyCount failed: %d\n", stat);

    FUNC10(num_families == 1, "expected num_families to be 1, got %d\n", num_families);

    stat = FUNC6(fonts, num_families, &family, &num_families);
    FUNC10(stat == Ok, "GdipGetFontCollectionFamilyList failed: %d\n", stat);

    stat = FUNC4(family, family_name, LANG_NEUTRAL);
    FUNC10(stat == Ok, "GdipGetFamilyName failed: %d\n", stat);

    stat = FUNC1(family, 256.0, FontStyleRegular, UnitPixel, &font);
    FUNC10(stat == Ok, "GdipCreateFont failed: %d\n", stat);

    /* Cleanup */

    stat = FUNC2(font);
    FUNC10(stat == Ok, "GdipDeleteFont failed: %d\n", stat);

    stat = FUNC3(&fonts);
    FUNC10(stat == Ok, "GdipDeletePrivateFontCollection failed: %d\n", stat);

    FUNC0(path);
}