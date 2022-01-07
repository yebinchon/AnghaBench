
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WORD ;
typedef int WCHAR ;
struct TYPE_9__ {int nGroups; int groups; } ;
struct TYPE_8__ {int startGlyphID; int startCharCode; } ;
struct TYPE_7__ {scalar_t__ CMAP_format12_Table; } ;
typedef TYPE_1__ ScriptCache ;
typedef int HDC ;
typedef int DWORD ;
typedef TYPE_2__ CMAP_SegmentedCoverage_group ;
typedef TYPE_3__ CMAP_SegmentedCoverage ;


 int GET_BE_DWORD (int ) ;
 int GGI_MARK_NONEXISTING_GLYPHS ;
 int GetGlyphIndicesW (int ,int*,int,int*,int) ;
 TYPE_2__* bsearch (int*,int ,int,int,int ) ;
 int compare_group ;
 scalar_t__ load_CMAP_format12_table (int ,TYPE_1__*) ;

DWORD OpenType_CMAP_GetGlyphIndex(HDC hdc, ScriptCache *psc, DWORD utf32c, WORD *glyph_index, DWORD flags)
{

    if (utf32c < 0x10000)
    {
        WCHAR ch = utf32c;
        return GetGlyphIndicesW(hdc, &ch, 1, glyph_index, flags);
    }

    if (!psc->CMAP_format12_Table)
        psc->CMAP_format12_Table = load_CMAP_format12_table(hdc, psc);

    if (flags & GGI_MARK_NONEXISTING_GLYPHS)
        *glyph_index = 0xffffu;
    else
        *glyph_index = 0u;

    if (psc->CMAP_format12_Table)
    {
        CMAP_SegmentedCoverage *format = ((void*)0);
        CMAP_SegmentedCoverage_group *group = ((void*)0);

        format = (CMAP_SegmentedCoverage *)psc->CMAP_format12_Table;

        group = bsearch(&utf32c, format->groups, GET_BE_DWORD(format->nGroups),
                        sizeof(CMAP_SegmentedCoverage_group), compare_group);

        if (group)
        {
            DWORD offset = utf32c - GET_BE_DWORD(group->startCharCode);
            *glyph_index = GET_BE_DWORD(group->startGlyphID) + offset;
            return 0;
        }
    }
    return 0;
}
