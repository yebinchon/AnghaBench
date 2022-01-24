#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int WORD ;
typedef  int WCHAR ;
struct TYPE_10__ {int fCanGlyphAlone; } ;
struct TYPE_8__ {int /*<<< orphan*/  uJustification; } ;
struct TYPE_9__ {TYPE_1__ sva; } ;
typedef  int /*<<< orphan*/  ScriptCache ;
typedef  TYPE_2__ SCRIPT_GLYPHPROP ;
typedef  TYPE_3__ SCRIPT_CHARPROP ;
typedef  int /*<<< orphan*/  SCRIPT_ANALYSIS ;
typedef  int INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int const*,int const,int*,int const,TYPE_2__*) ; 
 int /*<<< orphan*/  SCRIPT_JUSTIFY_BLANK ; 
 int /*<<< orphan*/  SCRIPT_JUSTIFY_CHARACTER ; 
 int FUNC1 (int*,int const,int) ; 
 int /*<<< orphan*/  FUNC2 (int const,int const,int*,TYPE_2__*) ; 

__attribute__((used)) static void FUNC3( ScriptCache* psc, SCRIPT_ANALYSIS* psa, const WCHAR* pwcChars, const INT cChars, const WORD* pwGlyphs, const INT cGlyphs, WORD* pwLogClust, SCRIPT_CHARPROP* pCharProp, SCRIPT_GLYPHPROP* pGlyphProp)
{
    int i,k;

    for (i = 0; i < cGlyphs; i++)
    {
        int char_index[20];
        int char_count = 0;

        k = FUNC1(pwLogClust, cChars, i);
        if (k>=0)
        {
            for (; k < cChars && pwLogClust[k] == i; k++)
                char_index[char_count++] = k;
        }

        if (char_count == 0)
            continue;

        if (char_count ==1 && pwcChars[char_index[0]] == 0x0020)  /* space */
        {
            pGlyphProp[i].sva.uJustification = SCRIPT_JUSTIFY_BLANK;
            pCharProp[char_index[0]].fCanGlyphAlone = 1;
        }
        else
            pGlyphProp[i].sva.uJustification = SCRIPT_JUSTIFY_CHARACTER;
    }

    FUNC0(psc, pwGlyphs, cGlyphs, pwLogClust, cChars, pGlyphProp);
    FUNC2(cGlyphs, cChars, pwLogClust, pGlyphProp);
}