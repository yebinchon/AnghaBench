
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int lexical_function ;
typedef int WORD ;
typedef int WCHAR ;
struct TYPE_5__ {size_t ralf; size_t end; size_t base; scalar_t__ start; } ;
typedef int ScriptCache ;
typedef int SCRIPT_ANALYSIS ;
typedef TYPE_1__ IndicSyllable ;
typedef size_t INT ;
typedef int HDC ;
typedef int BOOL ;


 size_t GSUB_E_NOGLYPH ;
 int UpdateClusters (size_t,size_t,int,size_t,int *) ;
 size_t apply_GSUB_feature_to_glyph (int ,int *,int *,int *,size_t,int,size_t*,char const*) ;
 size_t find_halant_consonant (int *,size_t,size_t,int ) ;
 int shift_syllable_glyph_indexs (TYPE_1__*,scalar_t__,size_t) ;

__attribute__((used)) static void Apply_Indic_PostBase(HDC hdc, ScriptCache *psc, SCRIPT_ANALYSIS *psa, WCHAR* pwChars, INT cChars, IndicSyllable *syllable, WORD *pwOutGlyphs, INT* pcGlyphs, WORD *pwLogClust, lexical_function lexical, IndicSyllable *glyph_index, BOOL modern, const char* feat)
{
    INT index, nextIndex;
    INT count, g_offset=0;
    INT ralf = syllable->ralf;

    count = syllable->end - syllable->base;

    index = find_halant_consonant(&pwChars[syllable->base], 0, count, lexical);

    while (index >= 0)
    {
        INT prevCount = *pcGlyphs;
        if (ralf >=0 && ralf < index)
        {
            g_offset--;
            ralf = -1;
        }

        if (!modern)
        {
            WORD g = pwOutGlyphs[index+glyph_index->base+g_offset];
            pwOutGlyphs[index+glyph_index->base+g_offset] = pwOutGlyphs[index+glyph_index->base+g_offset+1];
            pwOutGlyphs[index+glyph_index->base+g_offset+1] = g;
        }

        nextIndex = apply_GSUB_feature_to_glyph(hdc, psa, psc, pwOutGlyphs, index+glyph_index->base+g_offset, 1, pcGlyphs, feat);
        if (nextIndex > GSUB_E_NOGLYPH)
        {
            UpdateClusters(nextIndex, *pcGlyphs - prevCount, 1, cChars, pwLogClust);
            shift_syllable_glyph_indexs(glyph_index,index+glyph_index->start+g_offset, (*pcGlyphs - prevCount));
            g_offset += (*pcGlyphs - prevCount);
        }
        else if (!modern)
        {
            WORD g = pwOutGlyphs[index+glyph_index->base+g_offset];
            pwOutGlyphs[index+glyph_index->base+g_offset] = pwOutGlyphs[index+glyph_index->base+g_offset+1];
            pwOutGlyphs[index+glyph_index->base+g_offset+1] = g;
        }

        index+=2;
        index = find_halant_consonant(&pwChars[syllable->base], index, count, lexical);
    }
}
