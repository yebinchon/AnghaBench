#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  (* second_reorder_function ) (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ;
typedef  int /*<<< orphan*/  lexical_function ;
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_18__ {int end; } ;
typedef  int /*<<< orphan*/  ScriptCache ;
typedef  int /*<<< orphan*/  SCRIPT_ANALYSIS ;
typedef  int /*<<< orphan*/  LoadedFeature ;
typedef  TYPE_1__ IndicSyllable ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_1__*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_1__*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_1__*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_1__*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FEATURE_GSUB_TABLE ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int) ; 

__attribute__((used)) static void FUNC8(HDC hdc, ScriptCache *psc, SCRIPT_ANALYSIS *psa, WCHAR* pwChars, INT cChars, IndicSyllable *syllables, INT syllable_count, WORD *pwOutGlyphs, INT* pcGlyphs, WORD *pwLogClust, lexical_function lexical, second_reorder_function second_reorder, BOOL modern)
{
    int c;
    int overall_shift = 0;
    LoadedFeature *locl = (modern)?FUNC5(hdc, psa, psc, FEATURE_GSUB_TABLE, "locl"):NULL;
    LoadedFeature *nukt = FUNC5(hdc, psa, psc, FEATURE_GSUB_TABLE, "nukt");
    LoadedFeature *akhn = FUNC5(hdc, psa, psc, FEATURE_GSUB_TABLE, "akhn");
    LoadedFeature *rkrf = (modern)?FUNC5(hdc, psa, psc, FEATURE_GSUB_TABLE, "rkrf"):NULL;
    LoadedFeature *pstf = FUNC5(hdc, psa, psc, FEATURE_GSUB_TABLE, "pstf");
    LoadedFeature *vatu = (!rkrf)?FUNC5(hdc, psa, psc, FEATURE_GSUB_TABLE, "vatu"):NULL;
    LoadedFeature *cjct = (modern)?FUNC5(hdc, psa, psc, FEATURE_GSUB_TABLE, "cjct"):NULL;
    BOOL rphf = (FUNC5(hdc, psa, psc, FEATURE_GSUB_TABLE, "rphf") != NULL);
    BOOL pref = (FUNC5(hdc, psa, psc, FEATURE_GSUB_TABLE, "pref") != NULL);
    BOOL blwf = (FUNC5(hdc, psa, psc, FEATURE_GSUB_TABLE, "blwf") != NULL);
    BOOL half = (FUNC5(hdc, psa, psc, FEATURE_GSUB_TABLE, "half") != NULL);
    IndicSyllable glyph_indexs;

    for (c = 0; c < syllable_count; c++)
    {
        int old_end;
        FUNC6(&glyph_indexs, &syllables[c], sizeof(IndicSyllable));
        FUNC7(&glyph_indexs, -1, overall_shift);
        old_end = glyph_indexs.end;

        if (locl)
        {
            FUNC4("applying feature locl\n");
            FUNC0(hdc, psc, psa, pwChars, cChars, &syllables[c], pwOutGlyphs, pcGlyphs, pwLogClust, lexical, &glyph_indexs, locl);
        }
        if (nukt)
        {
            FUNC4("applying feature nukt\n");
            FUNC0(hdc, psc, psa, pwChars, cChars, &syllables[c], pwOutGlyphs, pcGlyphs, pwLogClust, lexical, &glyph_indexs, nukt);
        }
        if (akhn)
        {
            FUNC4("applying feature akhn\n");
            FUNC0(hdc, psc, psa, pwChars, cChars, &syllables[c], pwOutGlyphs, pcGlyphs, pwLogClust, lexical, &glyph_indexs, akhn);
        }

        if (rphf)
            FUNC3(hdc, psc, psa, pwChars, cChars, &syllables[c], pwOutGlyphs, pcGlyphs, pwLogClust, lexical, &glyph_indexs);
        if (rkrf)
        {
            FUNC4("applying feature rkrf\n");
            FUNC0(hdc, psc, psa, pwChars, cChars, &syllables[c], pwOutGlyphs, pcGlyphs, pwLogClust, lexical, &glyph_indexs, rkrf);
        }
        if (pref)
            FUNC1(hdc, psc, psa, pwChars, cChars, &syllables[c], pwOutGlyphs, pcGlyphs, pwLogClust, lexical, &glyph_indexs, modern, "pref");
        if (blwf)
        {
            if (!modern)
                FUNC2(hdc, psc, psa, pwChars, cChars, &syllables[c], pwOutGlyphs, pcGlyphs, pwLogClust, lexical, &glyph_indexs, "blwf");

            FUNC1(hdc, psc, psa, pwChars, cChars, &syllables[c], pwOutGlyphs, pcGlyphs, pwLogClust, lexical, &glyph_indexs, modern, "blwf");

        }
        if (half)
            FUNC2(hdc, psc, psa, pwChars, cChars, &syllables[c], pwOutGlyphs, pcGlyphs, pwLogClust, lexical, &glyph_indexs, "half");
        if (pstf)
        {
            FUNC4("applying feature pstf\n");
            FUNC0(hdc, psc, psa, pwChars, cChars, &syllables[c], pwOutGlyphs, pcGlyphs, pwLogClust, lexical, &glyph_indexs, pstf);
        }
        if (vatu)
        {
            FUNC4("applying feature vatu\n");
            FUNC0(hdc, psc, psa, pwChars, cChars, &syllables[c], pwOutGlyphs, pcGlyphs, pwLogClust, lexical, &glyph_indexs, vatu);
        }
        if (cjct)
        {
            FUNC4("applying feature cjct\n");
            FUNC0(hdc, psc, psa, pwChars, cChars, &syllables[c], pwOutGlyphs, pcGlyphs, pwLogClust, lexical, &glyph_indexs, cjct);
        }

        if (second_reorder)
            second_reorder(pwChars, &syllables[c], pwOutGlyphs, &glyph_indexs, lexical);

        overall_shift += glyph_indexs.end - old_end;
    }
}