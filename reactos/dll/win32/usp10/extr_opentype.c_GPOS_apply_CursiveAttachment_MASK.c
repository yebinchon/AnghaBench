#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int WORD ;
struct TYPE_16__ {scalar_t__ PosFormat; scalar_t__ Coverage; TYPE_1__* EntryExitRecord; } ;
struct TYPE_15__ {scalar_t__ SubTableCount; } ;
struct TYPE_14__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_13__ {int /*<<< orphan*/  fLogicalOrder; scalar_t__ fRTL; } ;
struct TYPE_12__ {scalar_t__ ExitAnchor; scalar_t__ EntryAnchor; } ;
typedef  TYPE_2__ SCRIPT_ANALYSIS ;
typedef  TYPE_3__ POINT ;
typedef  TYPE_4__ OT_LookupTable ;
typedef  TYPE_5__ GPOS_CursivePosFormat1 ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,TYPE_3__*,unsigned int) ; 
 scalar_t__ FUNC3 (TYPE_4__ const*,int) ; 
 int FUNC4 (int /*<<< orphan*/  const*,int const) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC7(const OT_LookupTable *look, const SCRIPT_ANALYSIS *analysis,
        const WORD *glyphs, unsigned int glyph_index, unsigned int glyph_count, unsigned int ppem, POINT *pt)
{
    int j;
    int write_dir = (analysis->fRTL && !analysis->fLogicalOrder) ? -1 : 1;

    if (glyph_index + write_dir >= glyph_count)
        return;

    FUNC5("Cursive Attachment Positioning Subtable\n");

    for (j = 0; j < FUNC1(look->SubTableCount); j++)
    {
        const GPOS_CursivePosFormat1 *cpf1 = (const GPOS_CursivePosFormat1 *)FUNC3(look, j);
        if (FUNC1(cpf1->PosFormat) == 1)
        {
            int index_exit, index_entry;
            WORD offset = FUNC1( cpf1->Coverage );
            index_exit = FUNC4((const BYTE*)cpf1+offset, glyphs[glyph_index]);
            if (index_exit != -1 && cpf1->EntryExitRecord[index_exit].ExitAnchor!= 0)
            {
                index_entry = FUNC4((const BYTE*)cpf1+offset, glyphs[glyph_index+write_dir]);
                if (index_entry != -1 && cpf1->EntryExitRecord[index_entry].EntryAnchor != 0)
                {
                    POINT exit_pt, entry_pt;
                    offset = FUNC1(cpf1->EntryExitRecord[index_exit].ExitAnchor);
                    FUNC2((const BYTE*)cpf1 + offset, &exit_pt, ppem);
                    offset = FUNC1(cpf1->EntryExitRecord[index_entry].EntryAnchor);
                    FUNC2((const BYTE*)cpf1 + offset, &entry_pt, ppem);
                    FUNC5("Found linkage %x[%s] %x[%s]\n",glyphs[glyph_index], FUNC6(&exit_pt), glyphs[glyph_index+write_dir], FUNC6(&entry_pt));
                    pt->x = entry_pt.x - exit_pt.x;
                    pt->y = entry_pt.y - exit_pt.y;
                    return;
                }
            }
        }
        else
            FUNC0("Cursive Attachment Positioning: Format %i Unhandled\n",FUNC1(cpf1->PosFormat));
    }
    return;
}