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
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Gurmukhi_consonants ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Reorder_Like_Bengali ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gurmukhi_lex ; 
 int /*<<< orphan*/ * FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC11(HDC hdc, ScriptCache *psc, SCRIPT_ANALYSIS *psa, WCHAR* pwcChars, INT cChars, WORD* pwOutGlyphs, INT* pcGlyphs, INT cMaxGlyphs, WORD *pwLogClust)
{
    int cCount = cChars;
    WCHAR *input;
    IndicSyllable *syllables = NULL;
    int syllable_count = 0;
    BOOL modern = FUNC7(psa, psc);

    if (*pcGlyphs != cChars)
    {
        FUNC1("Number of Glyphs and Chars need to match at the beginning\n");
        return;
    }

    input = FUNC8(cChars * sizeof(*input));
    FUNC10(input, pwcChars, cChars * sizeof(WCHAR));

    /* Step 1: Compose Consonants */
    FUNC0(hdc, input, &cCount, Gurmukhi_consonants, pwLogClust);
    FUNC5("New composed string %s (%i)\n",FUNC6(input,cCount),cCount);

    /* Step 2: Reorder within Syllables */
    FUNC3( hdc, psa, psc, input, cCount, &syllables, &syllable_count, gurmukhi_lex, Reorder_Like_Bengali, modern);
    FUNC5("reordered string %s\n",FUNC6(input,cCount));
    FUNC2(hdc, input, cCount, pwOutGlyphs, 0);
    *pcGlyphs = cCount;

    /* Step 3: Base Form application to syllables */
    FUNC4(hdc, psc, psa, input, cChars, syllables, syllable_count, pwOutGlyphs, pcGlyphs, pwLogClust, gurmukhi_lex, NULL, modern);

    FUNC9(input);
    FUNC9(syllables);
}