
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int WCHAR ;
typedef int ScriptCache ;
typedef int SCRIPT_ANALYSIS ;
typedef int IndicSyllable ;
typedef int INT ;
typedef int HDC ;


 int ERR (char*) ;
 int FALSE ;
 int GetGlyphIndicesW (int ,int *,int,int *,int ) ;
 int Indic_ReorderCharacters (int ,int *,int *,int *,int,int **,int*,int ,int ,int ) ;
 int Reorder_Like_Devanagari ;
 int ShapeIndicSyllables (int ,int *,int *,int *,int,int *,int,int *,int*,int *,int ,int *,int ) ;
 int TRACE (char*,int ) ;
 int debugstr_wn (int *,int) ;
 int * heap_alloc (int) ;
 int heap_free (int *) ;
 int khmer_lex ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void ContextualShape_Khmer(HDC hdc, ScriptCache *psc, SCRIPT_ANALYSIS *psa, WCHAR* pwcChars, INT cChars, WORD* pwOutGlyphs, INT* pcGlyphs, INT cMaxGlyphs, WORD *pwLogClust)
{
    int cCount = cChars;
    WCHAR *input;
    IndicSyllable *syllables = ((void*)0);
    int syllable_count = 0;

    if (*pcGlyphs != cChars)
    {
        ERR("Number of Glyphs and Chars need to match at the beginning\n");
        return;
    }

    input = heap_alloc(cChars * sizeof(*input));
    memcpy(input, pwcChars, cChars * sizeof(WCHAR));


    Indic_ReorderCharacters( hdc, psa, psc, input, cCount, &syllables, &syllable_count, khmer_lex, Reorder_Like_Devanagari, FALSE);
    TRACE("reordered string %s\n",debugstr_wn(input,cCount));
    GetGlyphIndicesW(hdc, input, cCount, pwOutGlyphs, 0);
    *pcGlyphs = cCount;


    ShapeIndicSyllables(hdc, psc, psa, input, cChars, syllables, syllable_count, pwOutGlyphs, pcGlyphs, pwLogClust, khmer_lex, ((void*)0), FALSE);

    heap_free(input);
    heap_free(syllables);
}
