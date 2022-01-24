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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  ScriptCache ;
typedef  int /*<<< orphan*/  SCRIPT_ANALYSIS ;
typedef  int /*<<< orphan*/  IndicSyllable ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Reorder_Like_Bengali ; 
 int /*<<< orphan*/  SecondReorder_Like_Tamil ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  Tamil_consonants ; 
 int /*<<< orphan*/  Tamil_vowels ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  tamil_lex ; 

__attribute__((used)) static void FUNC12(HDC hdc, ScriptCache *psc, SCRIPT_ANALYSIS *psa, WCHAR* pwcChars, INT cChars, WORD* pwOutGlyphs, INT* pcGlyphs, INT cMaxGlyphs, WORD *pwLogClust)
{
    int cCount = cChars;
    WCHAR *input;
    IndicSyllable *syllables = NULL;
    int syllable_count = 0;
    BOOL modern = FUNC8(psa, psc);

    if (*pcGlyphs != cChars)
    {
        FUNC2("Number of Glyphs and Chars need to match at the beginning\n");
        return;
    }

    input = FUNC9(2 * cChars * sizeof(*input));
    FUNC11(input, pwcChars, cChars * sizeof(WCHAR));

    /* Step 1: Decompose Vowels and Compose Consonants */
    FUNC1(hdc, input,  &cCount, Tamil_vowels, pwLogClust, cChars);
    FUNC0(hdc, input, &cCount, Tamil_consonants, pwLogClust);
    FUNC6("New composed string %s (%i)\n",FUNC7(input,cCount),cCount);

    /* Step 2: Reorder within Syllables */
    FUNC4( hdc, psa, psc, input, cCount, &syllables, &syllable_count, tamil_lex, Reorder_Like_Bengali, modern);
    FUNC6("reordered string %s\n",FUNC7(input,cCount));
    FUNC3(hdc, input, cCount, pwOutGlyphs, 0);
    *pcGlyphs = cCount;

    /* Step 3: Base Form application to syllables */
    FUNC5(hdc, psc, psa, input, cChars, syllables, syllable_count, pwOutGlyphs, pcGlyphs, pwLogClust, tamil_lex, SecondReorder_Like_Tamil, modern);

    FUNC10(input);
    FUNC10(syllables);
}