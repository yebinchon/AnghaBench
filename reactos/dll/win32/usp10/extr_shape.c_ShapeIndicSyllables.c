
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_1__ ;


typedef int (* second_reorder_function ) (int *,TYPE_1__*,int *,TYPE_1__*,int ) ;
typedef int lexical_function ;
typedef int WORD ;
typedef int WCHAR ;
struct TYPE_18__ {int end; } ;
typedef int ScriptCache ;
typedef int SCRIPT_ANALYSIS ;
typedef int LoadedFeature ;
typedef TYPE_1__ IndicSyllable ;
typedef int INT ;
typedef int HDC ;
typedef scalar_t__ BOOL ;


 int Apply_Indic_BasicForm (int ,int *,int *,int *,int,TYPE_1__*,int *,int*,int *,int ,TYPE_1__*,int *) ;
 int Apply_Indic_PostBase (int ,int *,int *,int *,int,TYPE_1__*,int *,int*,int *,int ,TYPE_1__*,scalar_t__,char*) ;
 int Apply_Indic_PreBase (int ,int *,int *,int *,int,TYPE_1__*,int *,int*,int *,int ,TYPE_1__*,char*) ;
 int Apply_Indic_Rphf (int ,int *,int *,int *,int,TYPE_1__*,int *,int*,int *,int ,TYPE_1__*) ;
 int FEATURE_GSUB_TABLE ;
 int TRACE (char*) ;
 int * load_OT_feature (int ,int *,int *,int ,char*) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int shift_syllable_glyph_indexs (TYPE_1__*,int,int) ;

__attribute__((used)) static void ShapeIndicSyllables(HDC hdc, ScriptCache *psc, SCRIPT_ANALYSIS *psa, WCHAR* pwChars, INT cChars, IndicSyllable *syllables, INT syllable_count, WORD *pwOutGlyphs, INT* pcGlyphs, WORD *pwLogClust, lexical_function lexical, second_reorder_function second_reorder, BOOL modern)
{
    int c;
    int overall_shift = 0;
    LoadedFeature *locl = (modern)?load_OT_feature(hdc, psa, psc, FEATURE_GSUB_TABLE, "locl"):((void*)0);
    LoadedFeature *nukt = load_OT_feature(hdc, psa, psc, FEATURE_GSUB_TABLE, "nukt");
    LoadedFeature *akhn = load_OT_feature(hdc, psa, psc, FEATURE_GSUB_TABLE, "akhn");
    LoadedFeature *rkrf = (modern)?load_OT_feature(hdc, psa, psc, FEATURE_GSUB_TABLE, "rkrf"):((void*)0);
    LoadedFeature *pstf = load_OT_feature(hdc, psa, psc, FEATURE_GSUB_TABLE, "pstf");
    LoadedFeature *vatu = (!rkrf)?load_OT_feature(hdc, psa, psc, FEATURE_GSUB_TABLE, "vatu"):((void*)0);
    LoadedFeature *cjct = (modern)?load_OT_feature(hdc, psa, psc, FEATURE_GSUB_TABLE, "cjct"):((void*)0);
    BOOL rphf = (load_OT_feature(hdc, psa, psc, FEATURE_GSUB_TABLE, "rphf") != ((void*)0));
    BOOL pref = (load_OT_feature(hdc, psa, psc, FEATURE_GSUB_TABLE, "pref") != ((void*)0));
    BOOL blwf = (load_OT_feature(hdc, psa, psc, FEATURE_GSUB_TABLE, "blwf") != ((void*)0));
    BOOL half = (load_OT_feature(hdc, psa, psc, FEATURE_GSUB_TABLE, "half") != ((void*)0));
    IndicSyllable glyph_indexs;

    for (c = 0; c < syllable_count; c++)
    {
        int old_end;
        memcpy(&glyph_indexs, &syllables[c], sizeof(IndicSyllable));
        shift_syllable_glyph_indexs(&glyph_indexs, -1, overall_shift);
        old_end = glyph_indexs.end;

        if (locl)
        {
            TRACE("applying feature locl\n");
            Apply_Indic_BasicForm(hdc, psc, psa, pwChars, cChars, &syllables[c], pwOutGlyphs, pcGlyphs, pwLogClust, lexical, &glyph_indexs, locl);
        }
        if (nukt)
        {
            TRACE("applying feature nukt\n");
            Apply_Indic_BasicForm(hdc, psc, psa, pwChars, cChars, &syllables[c], pwOutGlyphs, pcGlyphs, pwLogClust, lexical, &glyph_indexs, nukt);
        }
        if (akhn)
        {
            TRACE("applying feature akhn\n");
            Apply_Indic_BasicForm(hdc, psc, psa, pwChars, cChars, &syllables[c], pwOutGlyphs, pcGlyphs, pwLogClust, lexical, &glyph_indexs, akhn);
        }

        if (rphf)
            Apply_Indic_Rphf(hdc, psc, psa, pwChars, cChars, &syllables[c], pwOutGlyphs, pcGlyphs, pwLogClust, lexical, &glyph_indexs);
        if (rkrf)
        {
            TRACE("applying feature rkrf\n");
            Apply_Indic_BasicForm(hdc, psc, psa, pwChars, cChars, &syllables[c], pwOutGlyphs, pcGlyphs, pwLogClust, lexical, &glyph_indexs, rkrf);
        }
        if (pref)
            Apply_Indic_PostBase(hdc, psc, psa, pwChars, cChars, &syllables[c], pwOutGlyphs, pcGlyphs, pwLogClust, lexical, &glyph_indexs, modern, "pref");
        if (blwf)
        {
            if (!modern)
                Apply_Indic_PreBase(hdc, psc, psa, pwChars, cChars, &syllables[c], pwOutGlyphs, pcGlyphs, pwLogClust, lexical, &glyph_indexs, "blwf");

            Apply_Indic_PostBase(hdc, psc, psa, pwChars, cChars, &syllables[c], pwOutGlyphs, pcGlyphs, pwLogClust, lexical, &glyph_indexs, modern, "blwf");

        }
        if (half)
            Apply_Indic_PreBase(hdc, psc, psa, pwChars, cChars, &syllables[c], pwOutGlyphs, pcGlyphs, pwLogClust, lexical, &glyph_indexs, "half");
        if (pstf)
        {
            TRACE("applying feature pstf\n");
            Apply_Indic_BasicForm(hdc, psc, psa, pwChars, cChars, &syllables[c], pwOutGlyphs, pcGlyphs, pwLogClust, lexical, &glyph_indexs, pstf);
        }
        if (vatu)
        {
            TRACE("applying feature vatu\n");
            Apply_Indic_BasicForm(hdc, psc, psa, pwChars, cChars, &syllables[c], pwOutGlyphs, pcGlyphs, pwLogClust, lexical, &glyph_indexs, vatu);
        }
        if (cjct)
        {
            TRACE("applying feature cjct\n");
            Apply_Indic_BasicForm(hdc, psc, psa, pwChars, cChars, &syllables[c], pwOutGlyphs, pcGlyphs, pwLogClust, lexical, &glyph_indexs, cjct);
        }

        if (second_reorder)
            second_reorder(pwChars, &syllables[c], pwOutGlyphs, &glyph_indexs, lexical);

        overall_shift += glyph_indexs.end - old_end;
    }
}
