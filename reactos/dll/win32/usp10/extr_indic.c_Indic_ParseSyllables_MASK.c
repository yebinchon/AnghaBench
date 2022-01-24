#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ (* lexical_function ) (int /*<<< orphan*/  const) ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_7__ {int start; unsigned int base; int ralf; int blwf; int pref; int end; } ;
typedef  int /*<<< orphan*/  ScriptCache ;
typedef  int /*<<< orphan*/  SCRIPT_ANALYSIS ;
typedef  TYPE_1__ IndicSyllable ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_1__*,scalar_t__ (*) (int /*<<< orphan*/  const),int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int FUNC4 (int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ ,unsigned int*,int,scalar_t__ (*) (int /*<<< orphan*/  const)) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,unsigned int,scalar_t__ (*) (int /*<<< orphan*/  const)) ; 
 TYPE_1__* FUNC7 (int) ; 
 scalar_t__ lex_Generic ; 

void FUNC8(HDC hdc, SCRIPT_ANALYSIS *psa, ScriptCache *psc, const WCHAR *input, unsigned int cChar,
        IndicSyllable **syllables, int *syllable_count, lexical_function lex, BOOL modern)
{
    unsigned int center = 0;
    int index = 0;
    int next = 0;

    *syllable_count = 0;

    if (!lex)
    {
        FUNC0("Failure to have required functions\n");
        return;
    }

    FUNC6(input, cChar, lex);
    while (next != -1)
    {
        while((next < cChar) && lex(input[next]) == lex_Generic)
            next++;
        index = next;
        if (next >= cChar)
            break;
        next = FUNC4(input, cChar, 0, &center, index, lex);
        if (next != -1)
        {
            if (*syllable_count)
                *syllables = FUNC3(FUNC2(),0,*syllables, sizeof(IndicSyllable)*(*syllable_count+1));
            else
                *syllables = FUNC7(sizeof(**syllables));
            (*syllables)[*syllable_count].start = index;
            (*syllables)[*syllable_count].base = center;
            (*syllables)[*syllable_count].ralf = -1;
            (*syllables)[*syllable_count].blwf = -1;
            (*syllables)[*syllable_count].pref = -1;
            (*syllables)[*syllable_count].end = next-1;
            FUNC1(hdc, psa, psc, input, &(*syllables)[*syllable_count], lex, modern);
            index = next;
            *syllable_count = (*syllable_count)+1;
        }
        else if (index < cChar)
        {
            FUNC5("Processing failed at %i\n",index);
            next = ++index;
        }
    }
    FUNC5("Processed %i of %i characters into %i syllables\n",index,cChar,*syllable_count);
}