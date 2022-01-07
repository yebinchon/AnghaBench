
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int lexical_function ;
typedef int WORD ;
typedef int WCHAR ;
struct TYPE_8__ {int start; int end; } ;
struct TYPE_7__ {int GSUB_Table; } ;
typedef TYPE_1__ ScriptCache ;
typedef int SCRIPT_ANALYSIS ;
typedef int LoadedFeature ;
typedef TYPE_2__ IndicSyllable ;
typedef int INT ;
typedef int HDC ;


 int GSUB_E_NOGLYPH ;
 int GSUB_apply_feature_all_lookups (int ,int *,int *,int,int,int*) ;
 int UpdateClusters (int,int,int,int,int *) ;
 int shift_syllable_glyph_indexs (TYPE_2__*,int,int) ;

__attribute__((used)) static void Apply_Indic_BasicForm(HDC hdc, ScriptCache *psc, SCRIPT_ANALYSIS *psa, WCHAR* pwChars, INT cChars, IndicSyllable *syllable, WORD *pwOutGlyphs, INT* pcGlyphs, WORD *pwLogClust, lexical_function lexical, IndicSyllable *glyph_index, LoadedFeature *feature )
{
    int index = glyph_index->start;

    if (!feature)
        return;

    while(index <= glyph_index->end)
    {
            INT nextIndex;
            INT prevCount = *pcGlyphs;
            nextIndex = GSUB_apply_feature_all_lookups(psc->GSUB_Table, feature, pwOutGlyphs, index, 1, pcGlyphs);
            if (nextIndex > GSUB_E_NOGLYPH)
            {
                UpdateClusters(nextIndex, *pcGlyphs - prevCount, 1, cChars, pwLogClust);
                shift_syllable_glyph_indexs(glyph_index,index,*pcGlyphs - prevCount);
                index = nextIndex;
            }
            else
                index++;
    }
}
