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
typedef  scalar_t__ WORD ;
struct TYPE_8__ {int /*<<< orphan*/ * Alternate; int /*<<< orphan*/  GlyphCount; } ;
struct TYPE_7__ {int /*<<< orphan*/ * AlternateSet; int /*<<< orphan*/  Coverage; } ;
struct TYPE_6__ {int /*<<< orphan*/  SubTableCount; } ;
typedef  TYPE_1__ OT_LookupTable ;
typedef  size_t INT ;
typedef  TYPE_2__ GSUB_AlternateSubstFormat1 ;
typedef  TYPE_3__ GSUB_AlternateSet ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 size_t GSUB_E_NOGLYPH ; 
 scalar_t__ FUNC2 (TYPE_1__ const*,int) ; 
 size_t FUNC3 (int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static INT FUNC5(const OT_LookupTable *look, WORD *glyphs, INT glyph_index, INT write_dir, INT *glyph_count)
{
    int j;
    FUNC4("Alternate Substitution Subtable\n");

    for (j = 0; j < FUNC1(look->SubTableCount); j++)
    {
        int offset;
        const GSUB_AlternateSubstFormat1 *asf1;
        INT index;

        asf1 = (const GSUB_AlternateSubstFormat1*)FUNC2(look, j);
        offset = FUNC1(asf1->Coverage);

        index = FUNC3((const BYTE*)asf1+offset, glyphs[glyph_index]);
        if (index != -1)
        {
            const GSUB_AlternateSet *as;
            offset =  FUNC1(asf1->AlternateSet[index]);
            as = (const GSUB_AlternateSet*)((const BYTE*)asf1+offset);
            FUNC0("%i alternates, picking index 0\n",FUNC1(as->GlyphCount));
            if (glyphs[glyph_index] == FUNC1(as->Alternate[0]))
                return GSUB_E_NOGLYPH;

            FUNC4("  Glyph 0x%x ->",glyphs[glyph_index]);
            glyphs[glyph_index] = FUNC1(as->Alternate[0]);
            FUNC4(" 0x%x\n",glyphs[glyph_index]);
            return glyph_index + write_dir;
        }
    }
    return GSUB_E_NOGLYPH;
}