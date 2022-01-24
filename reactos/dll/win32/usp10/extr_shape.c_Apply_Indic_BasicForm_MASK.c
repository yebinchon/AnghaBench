#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lexical_function ;
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_8__ {int start; int end; } ;
struct TYPE_7__ {int /*<<< orphan*/  GSUB_Table; } ;
typedef  TYPE_1__ ScriptCache ;
typedef  int /*<<< orphan*/  SCRIPT_ANALYSIS ;
typedef  int /*<<< orphan*/  LoadedFeature ;
typedef  TYPE_2__ IndicSyllable ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int GSUB_E_NOGLYPH ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int) ; 

__attribute__((used)) static void FUNC3(HDC hdc, ScriptCache *psc, SCRIPT_ANALYSIS *psa, WCHAR* pwChars, INT cChars, IndicSyllable *syllable, WORD *pwOutGlyphs, INT* pcGlyphs, WORD *pwLogClust, lexical_function lexical, IndicSyllable *glyph_index, LoadedFeature *feature )
{
    int index = glyph_index->start;

    if (!feature)
        return;

    while(index <= glyph_index->end)
    {
            INT nextIndex;
            INT prevCount = *pcGlyphs;
            nextIndex = FUNC0(psc->GSUB_Table, feature, pwOutGlyphs, index, 1, pcGlyphs);
            if (nextIndex > GSUB_E_NOGLYPH)
            {
                FUNC1(nextIndex, *pcGlyphs - prevCount, 1, cChars, pwLogClust);
                FUNC2(glyph_index,index,*pcGlyphs - prevCount);
                index = nextIndex;
            }
            else
                index++;
    }
}