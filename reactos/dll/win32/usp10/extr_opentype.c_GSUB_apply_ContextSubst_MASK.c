#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_11__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
typedef  int WORD ;
struct TYPE_24__ {int /*<<< orphan*/  SubstCount; int /*<<< orphan*/ * Class; int /*<<< orphan*/  GlyphCount; } ;
struct TYPE_23__ {TYPE_1__* SubstLookupRecord; } ;
struct TYPE_22__ {int /*<<< orphan*/ * SubClassRule; int /*<<< orphan*/  SubClassRuleCnt; } ;
struct TYPE_21__ {int /*<<< orphan*/ * SubRule; int /*<<< orphan*/  SubRuleCount; } ;
struct TYPE_20__ {int /*<<< orphan*/  SubstCount; int /*<<< orphan*/ * Input; int /*<<< orphan*/  GlyphCount; } ;
struct TYPE_19__ {TYPE_2__* SubstLookupRecord; } ;
struct TYPE_18__ {int /*<<< orphan*/  SubTableCount; } ;
struct TYPE_17__ {int /*<<< orphan*/  SequenceIndex; int /*<<< orphan*/  LookupListIndex; } ;
struct TYPE_16__ {int /*<<< orphan*/  SequenceIndex; int /*<<< orphan*/  LookupListIndex; } ;
struct TYPE_15__ {int /*<<< orphan*/  SubstFormat; int /*<<< orphan*/ * SubRuleSet; int /*<<< orphan*/  Coverage; } ;
struct TYPE_14__ {int /*<<< orphan*/ * SubClassSet; int /*<<< orphan*/  ClassDef; int /*<<< orphan*/  Coverage; } ;
typedef  TYPE_3__ OT_LookupTable ;
typedef  int /*<<< orphan*/  OT_LookupList ;
typedef  size_t INT ;
typedef  TYPE_4__ GSUB_SubRule_2 ;
typedef  TYPE_5__ GSUB_SubRule_1 ;
typedef  TYPE_6__ GSUB_SubRuleSet ;
typedef  TYPE_7__ GSUB_SubClassSet ;
typedef  TYPE_8__ GSUB_SubClassRule_2 ;
typedef  TYPE_9__ GSUB_SubClassRule_1 ;
typedef  TYPE_10__ GSUB_ContextSubstFormat2 ;
typedef  TYPE_11__ GSUB_ContextSubstFormat1 ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int GSUB_E_NOGLYPH ; 
 int FUNC3 (int /*<<< orphan*/  const*,unsigned int,int*,unsigned int,size_t,size_t*) ; 
 scalar_t__ FUNC4 (TYPE_3__ const*,int) ; 
 int FUNC5 (int /*<<< orphan*/  const*,int) ; 
 int FUNC6 (void const*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,unsigned int,size_t,size_t) ; 

__attribute__((used)) static INT FUNC9(const OT_LookupList* lookup, const OT_LookupTable *look, WORD *glyphs, INT glyph_index, INT write_dir, INT *glyph_count)
{
    int j;
    FUNC7("Context Substitution Subtable\n");
    for (j = 0; j < FUNC2(look->SubTableCount); j++)
    {
        const GSUB_ContextSubstFormat1 *csf1;

        csf1 = (const GSUB_ContextSubstFormat1*)FUNC4(look, j);
        if (FUNC2(csf1->SubstFormat) == 1)
        {
            int offset, index;
            FUNC7("Context Substitution Subtable: Class 1\n");
            offset = FUNC2(csf1->Coverage);
            index = FUNC5((const BYTE*)csf1+offset, glyphs[glyph_index]);
            FUNC7("  Coverage index %i\n",index);
            if (index != -1)
            {
                int k, count;
                const GSUB_SubRuleSet *srs;
                offset = FUNC2(csf1->SubRuleSet[index]);
                srs = (const GSUB_SubRuleSet*)((const BYTE*)csf1+offset);
                count = FUNC2(srs->SubRuleCount);
                FUNC7("  SubRuleSet has %i members\n",count);
                for (k = 0; k < count; k++)
                {
                    const GSUB_SubRule_1 *sr;
                    const GSUB_SubRule_2 *sr_2;
                    unsigned int g;
                    int g_count, l;
                    int newIndex = glyph_index;

                    offset = FUNC2(srs->SubRule[k]);
                    sr = (const GSUB_SubRule_1*)((const BYTE*)srs+offset);
                    g_count = FUNC2(sr->GlyphCount);
                    FUNC7("   SubRule has %i glyphs\n",g_count);

                    g = glyph_index + write_dir * (g_count - 1);
                    if (g >= *glyph_count)
                        continue;

                    for (l = 0; l < g_count-1; l++)
                        if (glyphs[glyph_index + (write_dir * (l+1))] != FUNC2(sr->Input[l])) break;

                    if (l < g_count-1)
                    {
                        FUNC7("   Rule does not match\n");
                        continue;
                    }

                    FUNC7("   Rule matches\n");
                    sr_2 = (const GSUB_SubRule_2 *)&sr->Input[g_count - 1];

                    for (l = 0; l < FUNC2(sr->SubstCount); l++)
                    {
                        unsigned int lookup_index = FUNC2(sr_2->SubstLookupRecord[l].LookupListIndex);
                        unsigned int sequence_index = FUNC2(sr_2->SubstLookupRecord[l].SequenceIndex);

                        g = glyph_index + write_dir * sequence_index;
                        if (g >= *glyph_count)
                        {
                            FUNC8("Invalid sequence index %u (glyph index %u, write dir %d).\n",
                                    sequence_index, glyph_index, write_dir);
                            continue;
                        }

                        FUNC7("   SUBST: %u -> %u %u.\n", l, sequence_index, lookup_index);
                        newIndex = FUNC3(lookup, lookup_index, glyphs, g, write_dir, glyph_count);
                        if (newIndex == GSUB_E_NOGLYPH)
                        {
                            FUNC0("   Chain failed to generate a glyph\n");
                            continue;
                        }
                    }
                    return newIndex;
                }
            }
        }
        else if (FUNC2(csf1->SubstFormat) == 2)
        {
            const GSUB_ContextSubstFormat2 *csf2;
            const void *glyph_class_table;
            int offset, index;

            csf2 = (const GSUB_ContextSubstFormat2*)csf1;
            FUNC7("Context Substitution Subtable: Class 2\n");
            offset = FUNC2(csf2->Coverage);
            index = FUNC5((const BYTE*)csf2+offset, glyphs[glyph_index]);
            FUNC7("  Coverage index %i\n",index);
            if (index != -1)
            {
                int k, count, class;
                const GSUB_SubClassSet *scs;

                offset = FUNC2(csf2->ClassDef);
                glyph_class_table = (const BYTE *)csf2 + offset;

                class = FUNC6(glyph_class_table,glyphs[glyph_index]);

                offset = FUNC2(csf2->SubClassSet[class]);
                if (offset == 0)
                {
                    FUNC7("  No class rule table for class %i\n",class);
                    continue;
                }
                scs = (const GSUB_SubClassSet*)((const BYTE*)csf2+offset);
                count = FUNC2(scs->SubClassRuleCnt);
                FUNC7("  SubClassSet has %i members\n",count);
                for (k = 0; k < count; k++)
                {
                    const GSUB_SubClassRule_1 *sr;
                    const GSUB_SubClassRule_2 *sr_2;
                    unsigned int g;
                    int g_count, l;
                    int newIndex = glyph_index;

                    offset = FUNC2(scs->SubClassRule[k]);
                    sr = (const GSUB_SubClassRule_1*)((const BYTE*)scs+offset);
                    g_count = FUNC2(sr->GlyphCount);
                    FUNC7("   SubClassRule has %i glyphs classes\n",g_count);

                    g = glyph_index + write_dir * (g_count - 1);
                    if (g >= *glyph_count)
                        continue;

                    for (l = 0; l < g_count-1; l++)
                    {
                        int g_class = FUNC6(glyph_class_table, glyphs[glyph_index + (write_dir * (l+1))]);
                        if (g_class != FUNC2(sr->Class[l])) break;
                    }

                    if (l < g_count-1)
                    {
                        FUNC7("   Rule does not match\n");
                        continue;
                    }

                    FUNC7("   Rule matches\n");
                    sr_2 = (const GSUB_SubClassRule_2 *)&sr->Class[g_count - 1];

                    for (l = 0; l < FUNC2(sr->SubstCount); l++)
                    {
                        unsigned int lookup_index = FUNC2(sr_2->SubstLookupRecord[l].LookupListIndex);
                        unsigned int sequence_index = FUNC2(sr_2->SubstLookupRecord[l].SequenceIndex);

                        g = glyph_index + write_dir * sequence_index;
                        if (g >= *glyph_count)
                        {
                            FUNC8("Invalid sequence index %u (glyph index %u, write dir %d).\n",
                                    sequence_index, glyph_index, write_dir);
                            continue;
                        }

                        FUNC7("   SUBST: %u -> %u %u.\n", l, sequence_index, lookup_index);
                        newIndex = FUNC3(lookup, lookup_index, glyphs, g, write_dir, glyph_count);
                        if (newIndex == GSUB_E_NOGLYPH)
                        {
                            FUNC0("   Chain failed to generate a glyph\n");
                            continue;
                        }
                    }
                    return newIndex;
                }
            }
        }
        else
            FUNC1("Unhandled Context Substitution Format %i\n", FUNC2(csf1->SubstFormat));
    }
    return GSUB_E_NOGLYPH;
}