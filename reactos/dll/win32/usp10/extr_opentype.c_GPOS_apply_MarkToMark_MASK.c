#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WORD ;
struct TYPE_20__ {int /*<<< orphan*/ * Mark2Anchor; } ;
struct TYPE_19__ {TYPE_4__* MarkRecord; int /*<<< orphan*/  MarkCount; } ;
struct TYPE_18__ {int /*<<< orphan*/  PosFormat; int /*<<< orphan*/  Mark2Array; int /*<<< orphan*/  Mark1Array; int /*<<< orphan*/  ClassCount; int /*<<< orphan*/  Mark2Coverage; int /*<<< orphan*/  Mark1Coverage; } ;
struct TYPE_17__ {int /*<<< orphan*/  MarkAnchor; int /*<<< orphan*/  Class; } ;
struct TYPE_16__ {int /*<<< orphan*/  SubTableCount; } ;
struct TYPE_15__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_14__ {int /*<<< orphan*/  fLogicalOrder; scalar_t__ fRTL; } ;
typedef  TYPE_1__ SCRIPT_ANALYSIS ;
typedef  TYPE_2__ POINT ;
typedef  TYPE_3__ OT_LookupTable ;
typedef  TYPE_4__ GPOS_MarkRecord ;
typedef  TYPE_5__ GPOS_MarkMarkPosFormat1 ;
typedef  TYPE_6__ GPOS_MarkArray ;
typedef  TYPE_7__ GPOS_Mark2Record ;
typedef  int /*<<< orphan*/  GPOS_Mark2Array ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,TYPE_2__*,unsigned int) ; 
 scalar_t__ FUNC4 (TYPE_3__ const*,int) ; 
 int FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static BOOL FUNC8(const OT_LookupTable *look, const SCRIPT_ANALYSIS *analysis,
        const WORD *glyphs, unsigned int glyph_index, unsigned int glyph_count, unsigned int ppem, POINT *pt)
{
    int j;
    BOOL rc = FALSE;
    int write_dir = (analysis->fRTL && !analysis->fLogicalOrder) ? -1 : 1;

    FUNC6("MarkToMark Attachment Positioning Subtable\n");

    for (j = 0; j < FUNC2(look->SubTableCount); j++)
    {
        const GPOS_MarkMarkPosFormat1 *mmpf1 = (const GPOS_MarkMarkPosFormat1 *)FUNC4(look, j);
        if (FUNC2(mmpf1->PosFormat) == 1)
        {
            int offset = FUNC2(mmpf1->Mark1Coverage);
            int mark_index;
            mark_index = FUNC5((const BYTE*)mmpf1+offset, glyphs[glyph_index]);
            if (mark_index != -1)
            {
                int mark2_index;
                offset = FUNC2(mmpf1->Mark2Coverage);
                mark2_index = FUNC5((const BYTE*)mmpf1+offset, glyphs[glyph_index - write_dir]);
                if (mark2_index != -1)
                {
                    const GPOS_MarkArray *ma;
                    const GPOS_MarkRecord *mr;
                    const GPOS_Mark2Array *m2a;
                    const GPOS_Mark2Record *m2r;
                    int mark_class;
                    int class_count = FUNC2(mmpf1->ClassCount);
                    int mark2record_size;
                    POINT mark2_pt;
                    POINT mark_pt;
                    FUNC6("Mark %x(%i) and Mark2 %x(%i)\n",glyphs[glyph_index], mark_index, glyphs[glyph_index - write_dir], mark2_index);
                    offset = FUNC2(mmpf1->Mark1Array);
                    ma = (const GPOS_MarkArray*)((const BYTE*)mmpf1 + offset);
                    if (mark_index > FUNC2(ma->MarkCount))
                    {
                        FUNC0("Mark index exceeded mark count\n");
                        return FALSE;
                    }
                    mr = &ma->MarkRecord[mark_index];
                    mark_class = FUNC2(mr->Class);
                    FUNC6("Mark Class %i total classes %i\n",mark_class,class_count);
                    offset = FUNC2(mmpf1->Mark2Array);
                    m2a = (const GPOS_Mark2Array*)((const BYTE*)mmpf1 + offset);
                    mark2record_size = class_count * sizeof(WORD);
                    m2r = (const GPOS_Mark2Record*)((const BYTE*)m2a + sizeof(WORD) + (mark2record_size * mark2_index));
                    offset = FUNC2(m2r->Mark2Anchor[mark_class]);
                    FUNC3((const BYTE*)m2a + offset, &mark2_pt, ppem);
                    offset = FUNC2(mr->MarkAnchor);
                    FUNC3((const BYTE*)ma + offset, &mark_pt, ppem);
                    FUNC6("Offset on mark2 is %s design units\n",FUNC7(&mark2_pt));
                    FUNC6("Offset on mark is %s design units\n",FUNC7(&mark_pt));
                    pt->x += mark2_pt.x - mark_pt.x;
                    pt->y += mark2_pt.y - mark_pt.y;
                    FUNC6("Resulting cumulative offset is %s design units\n",FUNC7(pt));
                    rc = TRUE;
                }
            }
        }
        else
            FUNC1("Unhandled Mark To Mark Format %i\n",FUNC2(mmpf1->PosFormat));
    }
    return rc;
}