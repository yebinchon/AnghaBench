#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t WORD ;
struct TYPE_8__ {int /*<<< orphan*/  Coverage; int /*<<< orphan*/  DeltaGlyphID; int /*<<< orphan*/  SubstFormat; } ;
struct TYPE_7__ {int /*<<< orphan*/ * Substitute; int /*<<< orphan*/  GlyphCount; } ;
struct TYPE_6__ {int /*<<< orphan*/  SubTableCount; } ;
typedef  TYPE_1__ OT_LookupTable ;
typedef  size_t INT ;
typedef  TYPE_2__ GSUB_SingleSubstFormat2 ;
typedef  TYPE_3__ GSUB_SingleSubstFormat1 ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t GSUB_E_NOGLYPH ; 
 scalar_t__ FUNC1 (TYPE_1__ const*,int) ; 
 int FUNC2 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static INT FUNC4(const OT_LookupTable *look, WORD *glyphs, INT glyph_index, INT write_dir, INT *glyph_count)
{
    int j;
    FUNC3("Single Substitution Subtable\n");

    for (j = 0; j < FUNC0(look->SubTableCount); j++)
    {
        const GSUB_SingleSubstFormat1 *ssf1 = (const GSUB_SingleSubstFormat1*)FUNC1(look, j);
        if (FUNC0(ssf1->SubstFormat) == 1)
        {
            int offset = FUNC0(ssf1->Coverage);
            FUNC3("  subtype 1, delta %i\n", FUNC0(ssf1->DeltaGlyphID));
            if (FUNC2((const BYTE*)ssf1+offset, glyphs[glyph_index]) != -1)
            {
                FUNC3("  Glyph 0x%x ->",glyphs[glyph_index]);
                glyphs[glyph_index] = glyphs[glyph_index] + FUNC0(ssf1->DeltaGlyphID);
                FUNC3(" 0x%x\n",glyphs[glyph_index]);
                return glyph_index + write_dir;
            }
        }
        else
        {
            const GSUB_SingleSubstFormat2 *ssf2;
            INT index;
            INT offset;

            ssf2 = (const GSUB_SingleSubstFormat2 *)ssf1;
            offset = FUNC0(ssf1->Coverage);
            FUNC3("  subtype 2,  glyph count %i\n", FUNC0(ssf2->GlyphCount));
            index = FUNC2((const BYTE*)ssf2+offset, glyphs[glyph_index]);
            FUNC3("  Coverage index %i\n",index);
            if (index != -1)
            {
                if (glyphs[glyph_index] == FUNC0(ssf2->Substitute[index]))
                    return GSUB_E_NOGLYPH;

                FUNC3("    Glyph is 0x%x ->",glyphs[glyph_index]);
                glyphs[glyph_index] = FUNC0(ssf2->Substitute[index]);
                FUNC3("0x%x\n",glyphs[glyph_index]);
                return glyph_index + write_dir;
            }
        }
    }
    return GSUB_E_NOGLYPH;
}