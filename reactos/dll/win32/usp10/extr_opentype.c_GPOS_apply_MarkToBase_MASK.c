#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_9__ ;
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int WORD ;
struct TYPE_25__ {int /*<<< orphan*/  GlyphClassDef; } ;
struct TYPE_24__ {int /*<<< orphan*/ * BaseAnchor; } ;
struct TYPE_23__ {TYPE_5__* MarkRecord; int /*<<< orphan*/  MarkCount; } ;
struct TYPE_22__ {int /*<<< orphan*/  PosFormat; int /*<<< orphan*/  BaseArray; int /*<<< orphan*/  MarkArray; int /*<<< orphan*/  ClassCount; int /*<<< orphan*/  BaseCoverage; int /*<<< orphan*/  MarkCoverage; } ;
struct TYPE_21__ {int /*<<< orphan*/  MarkAnchor; int /*<<< orphan*/  Class; } ;
struct TYPE_20__ {int /*<<< orphan*/  SubTableCount; } ;
struct TYPE_19__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_18__ {int /*<<< orphan*/  fLogicalOrder; scalar_t__ fRTL; } ;
struct TYPE_17__ {TYPE_9__* GDEF_Table; } ;
typedef  TYPE_1__ ScriptCache ;
typedef  TYPE_2__ SCRIPT_ANALYSIS ;
typedef  TYPE_3__ POINT ;
typedef  TYPE_4__ OT_LookupTable ;
typedef  TYPE_5__ GPOS_MarkRecord ;
typedef  TYPE_6__ GPOS_MarkBasePosFormat1 ;
typedef  TYPE_7__ GPOS_MarkArray ;
typedef  TYPE_8__ GPOS_BaseRecord ;
typedef  int /*<<< orphan*/  GPOS_BaseArray ;
typedef  TYPE_9__ GDEF_Header ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,TYPE_3__*,unsigned int) ; 
 scalar_t__ FUNC4 (TYPE_4__ const*,int) ; 
 int FUNC5 (int /*<<< orphan*/  const*,int const) ; 
 scalar_t__ MarkGlyph ; 
 scalar_t__ FUNC6 (void const*,int const) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC9(const ScriptCache *script_cache, const OT_LookupTable *look,
        const SCRIPT_ANALYSIS *analysis, const WORD *glyphs, unsigned int glyph_index,
        unsigned int glyph_count, unsigned int ppem, POINT *pt)
{
    int j;
    int write_dir = (analysis->fRTL && !analysis->fLogicalOrder) ? -1 : 1;
    const void *glyph_class_table = NULL;
    int rc = -1;

    if (script_cache->GDEF_Table)
    {
        const GDEF_Header *header = script_cache->GDEF_Table;
        WORD offset = FUNC2( header->GlyphClassDef );
        if (offset)
            glyph_class_table = (const BYTE *)script_cache->GDEF_Table + offset;
    }

    FUNC7("MarkToBase Attachment Positioning Subtable\n");

    for (j = 0; j < FUNC2(look->SubTableCount); j++)
    {
        const GPOS_MarkBasePosFormat1 *mbpf1 = (const GPOS_MarkBasePosFormat1 *)FUNC4(look, j);
        if (FUNC2(mbpf1->PosFormat) == 1)
        {
            int offset = FUNC2(mbpf1->MarkCoverage);
            int mark_index;
            mark_index = FUNC5((const BYTE*)mbpf1+offset, glyphs[glyph_index]);
            if (mark_index != -1)
            {
                int base_index;
                int base_glyph = glyph_index - write_dir;

                if (glyph_class_table)
                {
                    while (FUNC6(glyph_class_table, glyphs[base_glyph]) == MarkGlyph && base_glyph > 0 && base_glyph < glyph_count)
                        base_glyph -= write_dir;
                }

                offset = FUNC2(mbpf1->BaseCoverage);
                base_index = FUNC5((const BYTE*)mbpf1+offset, glyphs[base_glyph]);
                if (base_index != -1)
                {
                    const GPOS_MarkArray *ma;
                    const GPOS_MarkRecord *mr;
                    const GPOS_BaseArray *ba;
                    const GPOS_BaseRecord *br;
                    int mark_class;
                    int class_count = FUNC2(mbpf1->ClassCount);
                    int baserecord_size;
                    POINT base_pt;
                    POINT mark_pt;
                    FUNC7("Mark %x(%i) and base %x(%i)\n",glyphs[glyph_index], mark_index, glyphs[base_glyph], base_index);
                    offset = FUNC2(mbpf1->MarkArray);
                    ma = (const GPOS_MarkArray*)((const BYTE*)mbpf1 + offset);
                    if (mark_index > FUNC2(ma->MarkCount))
                    {
                        FUNC0("Mark index exceeded mark count\n");
                        return -1;
                    }
                    mr = &ma->MarkRecord[mark_index];
                    mark_class = FUNC2(mr->Class);
                    FUNC7("Mark Class %i total classes %i\n",mark_class,class_count);
                    offset = FUNC2(mbpf1->BaseArray);
                    ba = (const GPOS_BaseArray*)((const BYTE*)mbpf1 + offset);
                    baserecord_size = class_count * sizeof(WORD);
                    br = (const GPOS_BaseRecord*)((const BYTE*)ba + sizeof(WORD) + (baserecord_size * base_index));
                    offset = FUNC2(br->BaseAnchor[mark_class]);
                    FUNC3((const BYTE*)ba + offset, &base_pt, ppem);
                    offset = FUNC2(mr->MarkAnchor);
                    FUNC3((const BYTE*)ma + offset, &mark_pt, ppem);
                    FUNC7("Offset on base is %s design units\n",FUNC8(&base_pt));
                    FUNC7("Offset on mark is %s design units\n",FUNC8(&mark_pt));
                    pt->x += base_pt.x - mark_pt.x;
                    pt->y += base_pt.y - mark_pt.y;
                    FUNC7("Resulting cumulative offset is %s design units\n",FUNC8(pt));
                    rc = base_glyph;
                }
            }
        }
        else
            FUNC1("Unhandled Mark To Base Format %i\n",FUNC2(mbpf1->PosFormat));
    }
    return rc;
}