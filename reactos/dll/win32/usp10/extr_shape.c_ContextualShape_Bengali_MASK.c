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
typedef  int /*<<< orphan*/  WORD ;
typedef  int WCHAR ;
typedef  int /*<<< orphan*/  ScriptCache ;
typedef  int /*<<< orphan*/  SCRIPT_ANALYSIS ;
typedef  int IndicSyllable ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  Bengali_consonants ; 
 int /*<<< orphan*/  Bengali_vowels ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int,int**,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Reorder_Like_Bengali ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int,int*,int,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int*,char*) ; 
 int /*<<< orphan*/  bengali_lex ; 
 int /*<<< orphan*/  FUNC8 (int*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int*) ; 
 int /*<<< orphan*/  FUNC12 (int*,int*,int) ; 

__attribute__((used)) static void FUNC13(HDC hdc, ScriptCache *psc, SCRIPT_ANALYSIS *psa, WCHAR* pwcChars, INT cChars, WORD* pwOutGlyphs, INT* pcGlyphs, INT cMaxGlyphs, WORD *pwLogClust)
{
    int cCount = cChars;
    WCHAR *input;
    IndicSyllable *syllables = NULL;
    int syllable_count = 0;
    BOOL modern = FUNC9(psa, psc);

    if (*pcGlyphs != cChars)
    {
        FUNC2("Number of Glyphs and Chars need to match at the beginning\n");
        return;
    }

    input = FUNC10(2 * cChars * sizeof(*input));
    FUNC12(input, pwcChars, cChars * sizeof(WCHAR));

    /* Step 1: Decompose Vowels and Compose Consonants */
    FUNC1(hdc, input,  &cCount, Bengali_vowels, pwLogClust, cChars);
    FUNC0(hdc, input, &cCount, Bengali_consonants, pwLogClust);
    FUNC6("New composed string %s (%i)\n",FUNC8(input,cCount),cCount);

    /* Step 2: Reorder within Syllables */
    FUNC4( hdc, psa, psc, input, cCount, &syllables, &syllable_count, bengali_lex, Reorder_Like_Bengali, modern);
    FUNC6("reordered string %s\n",FUNC8(input,cCount));
    FUNC3(hdc, input, cCount, pwOutGlyphs, 0);
    *pcGlyphs = cCount;

    /* Step 3: Initial form is only applied to the beginning of words */
    for (cCount = cCount - 1 ; cCount >= 0; cCount --)
    {
        if (cCount == 0 || input[cCount] == 0x0020) /* space */
        {
            int index = cCount;
            int gCount = 1;
            if (index > 0) index++;

            FUNC7(hdc, psa, psc, &pwOutGlyphs[index], 0, 1, &gCount, "init");
        }
    }

    /* Step 4: Base Form application to syllables */
    FUNC5(hdc, psc, psa, input, cChars, syllables, syllable_count, pwOutGlyphs, pcGlyphs, pwLogClust, bengali_lex, NULL, modern);

    FUNC11(input);
    FUNC11(syllables);
}