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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int,int**,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Reorder_Like_Sinhala ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int,int*,int,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Sinhala_vowels ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (int*,int) ; 
 int* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int*) ; 
 int /*<<< orphan*/  FUNC9 (int*,int*,int) ; 
 int /*<<< orphan*/  sinhala_lex ; 

__attribute__((used)) static void FUNC10(HDC hdc, ScriptCache *psc, SCRIPT_ANALYSIS *psa, WCHAR* pwcChars, INT cChars, WORD* pwOutGlyphs, INT* pcGlyphs, INT cMaxGlyphs, WORD *pwLogClust)
{
    int cCount = cChars;
    int i;
    WCHAR *input;
    IndicSyllable *syllables = NULL;
    int syllable_count = 0;

    if (*pcGlyphs != cChars)
    {
        FUNC1("Number of Glyphs and Chars need to match at the beginning\n");
        return;
    }

    input = FUNC7(3 * cChars * sizeof(*input));

    FUNC9(input, pwcChars, cChars * sizeof(WCHAR));

    /* Step 1:  Decompose multi part vowels */
    FUNC0(hdc, input,  &cCount, Sinhala_vowels, pwLogClust, cChars);

    FUNC5("New double vowel expanded string %s (%i)\n",FUNC6(input,cCount),cCount);

    /* Step 2:  Reorder within Syllables */
    FUNC3( hdc, psa, psc, input, cCount, &syllables, &syllable_count, sinhala_lex, Reorder_Like_Sinhala, TRUE);
    FUNC5("reordered string %s\n",FUNC6(input,cCount));

    /* Step 3:  Strip dangling joiners */
    for (i = 0; i < cCount; i++)
    {
        if ((input[i] == 0x200D || input[i] == 0x200C) &&
            (i == 0 || input[i-1] == 0x0020 || i == cCount-1 || input[i+1] == 0x0020))
            input[i] = 0x0020;
    }

    /* Step 4: Base Form application to syllables */
    FUNC2(hdc, input, cCount, pwOutGlyphs, 0);
    *pcGlyphs = cCount;
    FUNC4(hdc, psc, psa, input, cChars, syllables, syllable_count, pwOutGlyphs, pcGlyphs, pwLogClust, sinhala_lex, NULL, TRUE);

    FUNC8(input);
    FUNC8(syllables);
}