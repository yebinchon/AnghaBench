
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int lexical_function ;
typedef int WORD ;
typedef int WCHAR ;
struct TYPE_5__ {scalar_t__ ralf; } ;
typedef int ScriptCache ;
typedef int SCRIPT_ANALYSIS ;
typedef TYPE_1__ IndicSyllable ;
typedef scalar_t__ INT ;
typedef int HDC ;


 scalar_t__ GSUB_E_NOGLYPH ;
 int UpdateClusters (scalar_t__,scalar_t__,int,scalar_t__,int *) ;
 scalar_t__ apply_GSUB_feature_to_glyph (int ,int *,int *,int *,scalar_t__,int,scalar_t__*,char*) ;
 int shift_syllable_glyph_indexs (TYPE_1__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void Apply_Indic_Rphf(HDC hdc, ScriptCache *psc, SCRIPT_ANALYSIS *psa, WCHAR* pwChars, INT cChars, IndicSyllable *syllable, WORD *pwOutGlyphs, INT* pcGlyphs, WORD *pwLogClust, lexical_function lexical, IndicSyllable *glyph_index)
{
    INT nextIndex;
    INT prevCount = *pcGlyphs;

    if (syllable->ralf >= 0)
    {
        nextIndex = apply_GSUB_feature_to_glyph(hdc, psa, psc, pwOutGlyphs, glyph_index->ralf, 1, pcGlyphs, "rphf");
        if (nextIndex > GSUB_E_NOGLYPH)
        {
            UpdateClusters(nextIndex, *pcGlyphs - prevCount, 1, cChars, pwLogClust);
            shift_syllable_glyph_indexs(glyph_index,glyph_index->ralf,*pcGlyphs - prevCount);
        }
    }
}
