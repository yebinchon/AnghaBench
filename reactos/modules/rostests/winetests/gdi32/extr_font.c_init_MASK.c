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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hgdi32 ; 
 void* pAddFontMemResourceEx ; 
 void* pAddFontResourceExA ; 
 void* pCreateFontIndirectExA ; 
 void* pGdiGetCharDimensions ; 
 void* pGdiGetCodePage ; 
 void* pGdiRealizationInfo ; 
 void* pGetCharABCWidthsA ; 
 void* pGetCharABCWidthsFloatW ; 
 void* pGetCharABCWidthsI ; 
 void* pGetCharABCWidthsW ; 
 void* pGetCharWidth32A ; 
 void* pGetCharWidth32W ; 
 void* pGetFontFileData ; 
 void* pGetFontFileInfo ; 
 void* pGetFontRealizationInfo ; 
 void* pGetFontUnicodeRanges ; 
 void* pGetGlyphIndicesA ; 
 void* pGetGlyphIndicesW ; 
 void* pGetTextExtentExPointI ; 
 void* pRemoveFontMemResourceEx ; 
 void* pRemoveFontResourceExA ; 
 int /*<<< orphan*/  system_lang_id ; 

__attribute__((used)) static void FUNC4(void)
{
    hgdi32 = FUNC0("gdi32.dll");

    pGdiGetCharDimensions = (void *)FUNC1(hgdi32, "GdiGetCharDimensions");
    pGdiGetCodePage = (void *) FUNC1(hgdi32,"GdiGetCodePage");
    pGetCharABCWidthsI = (void *)FUNC1(hgdi32, "GetCharABCWidthsI");
    pGetCharABCWidthsA = (void *)FUNC1(hgdi32, "GetCharABCWidthsA");
    pGetCharABCWidthsW = (void *)FUNC1(hgdi32, "GetCharABCWidthsW");
    pGetCharABCWidthsFloatW = (void *)FUNC1(hgdi32, "GetCharABCWidthsFloatW");
    pGetCharWidth32A = (void *)FUNC1(hgdi32, "GetCharWidth32A");
    pGetCharWidth32W = (void *)FUNC1(hgdi32, "GetCharWidth32W");
    pGetFontUnicodeRanges = (void *)FUNC1(hgdi32, "GetFontUnicodeRanges");
    pGetGlyphIndicesA = (void *)FUNC1(hgdi32, "GetGlyphIndicesA");
    pGetGlyphIndicesW = (void *)FUNC1(hgdi32, "GetGlyphIndicesW");
    pGetTextExtentExPointI = (void *)FUNC1(hgdi32, "GetTextExtentExPointI");
    pGdiRealizationInfo = (void *)FUNC1(hgdi32, "GdiRealizationInfo");
    pCreateFontIndirectExA = (void *)FUNC1(hgdi32, "CreateFontIndirectExA");
    pAddFontMemResourceEx = (void *)FUNC1(hgdi32, "AddFontMemResourceEx");
    pRemoveFontMemResourceEx = (void *)FUNC1(hgdi32, "RemoveFontMemResourceEx");
    pAddFontResourceExA = (void *)FUNC1(hgdi32, "AddFontResourceExA");
    pRemoveFontResourceExA = (void *)FUNC1(hgdi32, "RemoveFontResourceExA");
    pGetFontRealizationInfo = (void *)FUNC1(hgdi32, "GetFontRealizationInfo");
    pGetFontFileInfo = (void *)FUNC1(hgdi32, "GetFontFileInfo");
    pGetFontFileData = (void *)FUNC1(hgdi32, "GetFontFileData");

    system_lang_id = FUNC3(FUNC2());
}