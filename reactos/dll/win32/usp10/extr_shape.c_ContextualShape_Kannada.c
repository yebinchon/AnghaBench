
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
typedef int BOOL ;


 int DecomposeVowels (int ,int *,int*,int ,int *,int) ;
 int ERR (char*) ;
 int GetGlyphIndicesW (int ,int *,int,int *,int ) ;
 int Indic_ReorderCharacters (int ,int *,int *,int *,int,int **,int*,int ,int ,int ) ;
 int Kannada_vowels ;
 int Reorder_Like_Kannada ;
 int SecondReorder_Like_Telugu ;
 int ShapeIndicSyllables (int ,int *,int *,int *,int,int *,int,int *,int*,int *,int ,int ,int ) ;
 int TRACE (char*,int ,...) ;
 int debugstr_wn (int *,int) ;
 int get_GSUB_Indic2 (int *,int *) ;
 int * heap_alloc (int) ;
 int heap_free (int *) ;
 int kannada_lex ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void ContextualShape_Kannada(HDC hdc, ScriptCache *psc, SCRIPT_ANALYSIS *psa, WCHAR* pwcChars, INT cChars, WORD* pwOutGlyphs, INT* pcGlyphs, INT cMaxGlyphs, WORD *pwLogClust)
{
    int cCount = cChars;
    WCHAR *input;
    IndicSyllable *syllables = ((void*)0);
    int syllable_count = 0;
    BOOL modern = get_GSUB_Indic2(psa, psc);

    if (*pcGlyphs != cChars)
    {
        ERR("Number of Glyphs and Chars need to match at the beginning\n");
        return;
    }

    input = heap_alloc(3 * cChars * sizeof(*input));
    memcpy(input, pwcChars, cChars * sizeof(WCHAR));


    DecomposeVowels(hdc, input, &cCount, Kannada_vowels, pwLogClust, cChars);
    TRACE("New composed string %s (%i)\n",debugstr_wn(input,cCount),cCount);


    Indic_ReorderCharacters( hdc, psa, psc, input, cCount, &syllables, &syllable_count, kannada_lex, Reorder_Like_Kannada, modern);
    TRACE("reordered string %s\n",debugstr_wn(input,cCount));
    GetGlyphIndicesW(hdc, input, cCount, pwOutGlyphs, 0);
    *pcGlyphs = cCount;


    ShapeIndicSyllables(hdc, psc, psa, input, cChars, syllables, syllable_count, pwOutGlyphs, pcGlyphs, pwLogClust, kannada_lex, SecondReorder_Like_Telugu, modern);

    heap_free(input);
    heap_free(syllables);
}
