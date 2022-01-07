
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


 int DecomposeVowels (int ,int*,int*,int ,int *,int) ;
 int ERR (char*) ;
 int GetGlyphIndicesW (int ,int*,int,int *,int ) ;
 int Indic_ReorderCharacters (int ,int *,int *,int*,int,int**,int*,int ,int ,int ) ;
 int Reorder_Like_Sinhala ;
 int ShapeIndicSyllables (int ,int *,int *,int*,int,int*,int,int *,int*,int *,int ,int *,int ) ;
 int Sinhala_vowels ;
 int TRACE (char*,int ,...) ;
 int TRUE ;
 int debugstr_wn (int*,int) ;
 int* heap_alloc (int) ;
 int heap_free (int*) ;
 int memcpy (int*,int*,int) ;
 int sinhala_lex ;

__attribute__((used)) static void ContextualShape_Sinhala(HDC hdc, ScriptCache *psc, SCRIPT_ANALYSIS *psa, WCHAR* pwcChars, INT cChars, WORD* pwOutGlyphs, INT* pcGlyphs, INT cMaxGlyphs, WORD *pwLogClust)
{
    int cCount = cChars;
    int i;
    WCHAR *input;
    IndicSyllable *syllables = ((void*)0);
    int syllable_count = 0;

    if (*pcGlyphs != cChars)
    {
        ERR("Number of Glyphs and Chars need to match at the beginning\n");
        return;
    }

    input = heap_alloc(3 * cChars * sizeof(*input));

    memcpy(input, pwcChars, cChars * sizeof(WCHAR));


    DecomposeVowels(hdc, input, &cCount, Sinhala_vowels, pwLogClust, cChars);

    TRACE("New double vowel expanded string %s (%i)\n",debugstr_wn(input,cCount),cCount);


    Indic_ReorderCharacters( hdc, psa, psc, input, cCount, &syllables, &syllable_count, sinhala_lex, Reorder_Like_Sinhala, TRUE);
    TRACE("reordered string %s\n",debugstr_wn(input,cCount));


    for (i = 0; i < cCount; i++)
    {
        if ((input[i] == 0x200D || input[i] == 0x200C) &&
            (i == 0 || input[i-1] == 0x0020 || i == cCount-1 || input[i+1] == 0x0020))
            input[i] = 0x0020;
    }


    GetGlyphIndicesW(hdc, input, cCount, pwOutGlyphs, 0);
    *pcGlyphs = cCount;
    ShapeIndicSyllables(hdc, psc, psa, input, cChars, syllables, syllable_count, pwOutGlyphs, pcGlyphs, pwLogClust, sinhala_lex, ((void*)0), TRUE);

    heap_free(input);
    heap_free(syllables);
}
