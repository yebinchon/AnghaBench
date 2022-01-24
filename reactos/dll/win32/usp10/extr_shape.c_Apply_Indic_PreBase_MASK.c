#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lexical_function ;
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_5__ {scalar_t__ base; size_t start; } ;
typedef  int /*<<< orphan*/  ScriptCache ;
typedef  int /*<<< orphan*/  SCRIPT_ANALYSIS ;
typedef  TYPE_1__ IndicSyllable ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 scalar_t__ GSUB_E_NOGLYPH ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int,scalar_t__*,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC4(HDC hdc, ScriptCache *psc, SCRIPT_ANALYSIS *psa, WCHAR* pwChars, INT cChars, IndicSyllable *syllable, WORD *pwOutGlyphs, INT* pcGlyphs, WORD *pwLogClust, lexical_function lexical, IndicSyllable *glyph_index, const char* feature)
{
    INT index, nextIndex;
    INT count,g_offset;

    count = syllable->base - syllable->start;

    g_offset = 0;
    index = FUNC2(&pwChars[syllable->start], 0, count, lexical);
    while (index >= 0 && index + g_offset < (glyph_index->base - glyph_index->start))
    {
        INT prevCount = *pcGlyphs;
        nextIndex = FUNC1(hdc, psa, psc, pwOutGlyphs, index+glyph_index->start+g_offset, 1, pcGlyphs, feature);
        if (nextIndex > GSUB_E_NOGLYPH)
        {
            FUNC0(nextIndex, *pcGlyphs - prevCount, 1, cChars, pwLogClust);
            FUNC3(glyph_index, index + glyph_index->start + g_offset, (*pcGlyphs - prevCount));
            g_offset += (*pcGlyphs - prevCount);
        }

        index+=2;
        index = FUNC2(&pwChars[syllable->start], index, count, lexical);
    }
}