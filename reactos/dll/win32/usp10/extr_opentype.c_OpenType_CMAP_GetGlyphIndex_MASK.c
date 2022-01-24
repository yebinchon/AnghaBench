#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int WORD ;
typedef  int WCHAR ;
struct TYPE_9__ {int /*<<< orphan*/  nGroups; int /*<<< orphan*/  groups; } ;
struct TYPE_8__ {int /*<<< orphan*/  startGlyphID; int /*<<< orphan*/  startCharCode; } ;
struct TYPE_7__ {scalar_t__ CMAP_format12_Table; } ;
typedef  TYPE_1__ ScriptCache ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int DWORD ;
typedef  TYPE_2__ CMAP_SegmentedCoverage_group ;
typedef  TYPE_3__ CMAP_SegmentedCoverage ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int GGI_MARK_NONEXISTING_GLYPHS ; 
 int FUNC1 (int /*<<< orphan*/ ,int*,int,int*,int) ; 
 TYPE_2__* FUNC2 (int*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  compare_group ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 

DWORD FUNC4(HDC hdc, ScriptCache *psc, DWORD utf32c, WORD *glyph_index, DWORD flags)
{
    /* BMP: use gdi32 for ease */
    if (utf32c < 0x10000)
    {
        WCHAR ch = utf32c;
        return FUNC1(hdc, &ch, 1, glyph_index, flags);
    }

    if (!psc->CMAP_format12_Table)
        psc->CMAP_format12_Table = FUNC3(hdc, psc);

    if (flags & GGI_MARK_NONEXISTING_GLYPHS)
        *glyph_index = 0xffffu;
    else
        *glyph_index = 0u;

    if (psc->CMAP_format12_Table)
    {
        CMAP_SegmentedCoverage *format = NULL;
        CMAP_SegmentedCoverage_group *group = NULL;

        format = (CMAP_SegmentedCoverage *)psc->CMAP_format12_Table;

        group = FUNC2(&utf32c, format->groups, FUNC0(format->nGroups),
                        sizeof(CMAP_SegmentedCoverage_group), compare_group);

        if (group)
        {
            DWORD offset = utf32c - FUNC0(group->startCharCode);
            *glyph_index = FUNC0(group->startGlyphID) + offset;
            return 0;
        }
    }
    return 0;
}