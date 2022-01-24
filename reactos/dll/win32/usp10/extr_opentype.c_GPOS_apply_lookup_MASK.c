#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_51__   TYPE_8__ ;
typedef  struct TYPE_50__   TYPE_7__ ;
typedef  struct TYPE_49__   TYPE_6__ ;
typedef  struct TYPE_48__   TYPE_5__ ;
typedef  struct TYPE_47__   TYPE_4__ ;
typedef  struct TYPE_46__   TYPE_3__ ;
typedef  struct TYPE_45__   TYPE_2__ ;
typedef  struct TYPE_44__   TYPE_1__ ;

/* Type definitions */
typedef  enum gpos_lookup_type { ____Placeholder_gpos_lookup_type } gpos_lookup_type ;
typedef  int /*<<< orphan*/  WORD ;
struct TYPE_51__ {int du; int dv; } ;
struct TYPE_50__ {int /*<<< orphan*/  PosFormat; int /*<<< orphan*/  ExtensionLookupType; } ;
struct TYPE_49__ {int /*<<< orphan*/ * Lookup; } ;
struct TYPE_48__ {int /*<<< orphan*/ * SubTable; int /*<<< orphan*/  SubTableCount; int /*<<< orphan*/  LookupFlag; int /*<<< orphan*/  LookupType; } ;
struct TYPE_44__ {int tmAscent; int tmDescent; int tmInternalLeading; } ;
struct TYPE_47__ {TYPE_1__ otmTextMetrics; } ;
struct TYPE_46__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_45__ {int /*<<< orphan*/  fLogicalOrder; int /*<<< orphan*/  fRTL; } ;
typedef  int /*<<< orphan*/  ScriptCache ;
typedef  TYPE_2__ SCRIPT_ANALYSIS ;
typedef  TYPE_3__ POINT ;
typedef  TYPE_4__ OUTLINETEXTMETRICW ;
typedef  TYPE_5__ OT_LookupTable ;
typedef  TYPE_6__ OT_LookupList ;
typedef  int /*<<< orphan*/  LOGFONTW ;
typedef  TYPE_7__ GPOS_ExtensionPosFormat1 ;
typedef  TYPE_8__ GOFFSET ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  GPOS_LOOKUP_ADJUST_PAIR 135 
#define  GPOS_LOOKUP_ADJUST_SINGLE 134 
#define  GPOS_LOOKUP_ATTACH_CURSIVE 133 
#define  GPOS_LOOKUP_ATTACH_MARK_TO_BASE 132 
#define  GPOS_LOOKUP_ATTACH_MARK_TO_LIGATURE 131 
#define  GPOS_LOOKUP_ATTACH_MARK_TO_MARK 130 
#define  GPOS_LOOKUP_POSITION_CONTEXT 129 
#define  GPOS_LOOKUP_POSITION_CONTEXT_CHAINED 128 
 int GPOS_LOOKUP_POSITION_EXTENSION ; 
 unsigned int FUNC2 (int /*<<< orphan*/  const*,TYPE_4__ const*,int /*<<< orphan*/  const*,TYPE_2__ const*,int*,TYPE_6__ const*,TYPE_5__ const*,int /*<<< orphan*/  const*,unsigned int,unsigned int,TYPE_8__*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/  const*,TYPE_4__ const*,int /*<<< orphan*/  const*,TYPE_2__ const*,int*,TYPE_6__ const*,TYPE_5__ const*,int /*<<< orphan*/  const*,unsigned int,unsigned int,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__ const*,TYPE_2__ const*,int /*<<< orphan*/  const*,unsigned int,unsigned int,int,TYPE_3__*) ; 
 int FUNC5 (int /*<<< orphan*/  const*,TYPE_5__ const*,TYPE_2__ const*,int /*<<< orphan*/  const*,unsigned int,unsigned int,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__ const*,TYPE_2__ const*,int /*<<< orphan*/  const*,unsigned int,unsigned int,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__ const*,TYPE_2__ const*,int /*<<< orphan*/  const*,unsigned int,unsigned int,int,TYPE_3__*) ; 
 int FUNC8 (TYPE_5__ const*,TYPE_2__ const*,int /*<<< orphan*/  const*,unsigned int,unsigned int,int,TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__ const*,TYPE_2__ const*,int /*<<< orphan*/  const*,unsigned int,unsigned int,int,TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__ const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double*,double*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int FUNC13 (double) ; 

__attribute__((used)) static unsigned int FUNC14(const ScriptCache *script_cache, const OUTLINETEXTMETRICW *lpotm,
        const LOGFONTW *lplogfont, const SCRIPT_ANALYSIS *analysis, int *piAdvance, const OT_LookupList *lookup,
        unsigned int lookup_index, const WORD *glyphs, unsigned int glyph_index, unsigned int glyph_count,
        GOFFSET *pGoffset)
{
    int offset;
    const OT_LookupTable *look;
    int ppem = lpotm->otmTextMetrics.tmAscent + lpotm->otmTextMetrics.tmDescent - lpotm->otmTextMetrics.tmInternalLeading;
    enum gpos_lookup_type type;

    offset = FUNC1(lookup->Lookup[lookup_index]);
    look = (const OT_LookupTable*)((const BYTE*)lookup + offset);
    type = FUNC1(look->LookupType);
    FUNC11("type %#x, flag %#x, subtables %u.\n", type,
            FUNC1(look->LookupFlag), FUNC1(look->SubTableCount));

    if (type == GPOS_LOOKUP_POSITION_EXTENSION)
    {
        if (FUNC1(look->SubTableCount))
        {
            const GPOS_ExtensionPosFormat1 *ext = (const GPOS_ExtensionPosFormat1 *)((const BYTE *)look + FUNC1(look->SubTable[0]));
            if (FUNC1(ext->PosFormat) == 1)
            {
                type = FUNC1(ext->ExtensionLookupType);
                FUNC11("extension type %i\n",type);
            }
            else
            {
                FUNC0("Unhandled Extension Positioning Format %i\n",FUNC1(ext->PosFormat));
            }
        }
        else
        {
            FUNC12("lookup type is Extension Positioning but no extension subtable exists\n");
        }
    }
    switch (type)
    {
        case GPOS_LOOKUP_ADJUST_SINGLE:
        {
            double devX, devY;
            POINT adjust = {0,0};
            POINT advance = {0,0};
            FUNC9(look, analysis, glyphs, glyph_index, glyph_count, ppem, &adjust, &advance);
            if (adjust.x || adjust.y)
            {
                FUNC10(lpotm, lplogfont, adjust.x, adjust.y, &devX, &devY);
                pGoffset[glyph_index].du += FUNC13(devX);
                pGoffset[glyph_index].dv += FUNC13(devY);
            }
            if (advance.x || advance.y)
            {
                FUNC10(lpotm, lplogfont, advance.x, advance.y, &devX, &devY);
                piAdvance[glyph_index] += FUNC13(devX);
                if (advance.y)
                    FUNC0("Unhandled adjustment to Y advancement\n");
            }
            break;
        }

        case GPOS_LOOKUP_ADJUST_PAIR:
        {
            POINT advance[2]= {{0,0},{0,0}};
            POINT adjust[2]= {{0,0},{0,0}};
            double devX, devY;
            int index_offset;
            int write_dir = (analysis->fRTL && !analysis->fLogicalOrder) ? -1 : 1;
            int offset_sign = (analysis->fRTL && analysis->fLogicalOrder) ? -1 : 1;

            index_offset = FUNC8(look, analysis, glyphs,
                    glyph_index, glyph_count, ppem, adjust, advance);
            if (adjust[0].x || adjust[0].y)
            {
                FUNC10(lpotm, lplogfont, adjust[0].x, adjust[0].y, &devX, &devY);
                pGoffset[glyph_index].du += FUNC13(devX) * offset_sign;
                pGoffset[glyph_index].dv += FUNC13(devY);
            }
            if (advance[0].x || advance[0].y)
            {
                FUNC10(lpotm, lplogfont, advance[0].x, advance[0].y, &devX, &devY);
                piAdvance[glyph_index] += FUNC13(devX);
            }
            if (adjust[1].x || adjust[1].y)
            {
                FUNC10(lpotm, lplogfont, adjust[1].x, adjust[1].y, &devX, &devY);
                pGoffset[glyph_index + write_dir].du += FUNC13(devX) * offset_sign;
                pGoffset[glyph_index + write_dir].dv += FUNC13(devY);
            }
            if (advance[1].x || advance[1].y)
            {
                FUNC10(lpotm, lplogfont, advance[1].x, advance[1].y, &devX, &devY);
                piAdvance[glyph_index + write_dir] += FUNC13(devX);
            }
            return index_offset;
        }

        case GPOS_LOOKUP_ATTACH_CURSIVE:
        {
            POINT desU = {0,0};
            double devX, devY;
            int write_dir = (analysis->fRTL && !analysis->fLogicalOrder) ? -1 : 1;

            FUNC4(look, analysis, glyphs, glyph_index, glyph_count, ppem, &desU);
            if (desU.x || desU.y)
            {
                FUNC10(lpotm, lplogfont, desU.x, desU.y, &devX, &devY);
                /* Windows does not appear to apply X offsets here */
                pGoffset[glyph_index].dv = FUNC13(devY) + pGoffset[glyph_index+write_dir].dv;
            }
            break;
        }

        case GPOS_LOOKUP_ATTACH_MARK_TO_BASE:
        {
            double devX, devY;
            POINT desU = {0,0};
            int base_index = FUNC5(script_cache, look, analysis,
                    glyphs, glyph_index, glyph_count, ppem, &desU);
            if (base_index != -1)
            {
                FUNC10(lpotm, lplogfont, desU.x, desU.y, &devX, &devY);
                if (!analysis->fRTL) pGoffset[glyph_index].du = FUNC13(devX) - piAdvance[base_index];
                else
                {
                    if (analysis->fLogicalOrder) devX *= -1;
                    pGoffset[glyph_index].du = FUNC13(devX);
                }
                pGoffset[glyph_index].dv = FUNC13(devY);
            }
            break;
        }

        case GPOS_LOOKUP_ATTACH_MARK_TO_LIGATURE:
        {
            double devX, devY;
            POINT desU = {0,0};
            FUNC6(look, analysis, glyphs, glyph_index, glyph_count, ppem, &desU);
            if (desU.x || desU.y)
            {
                FUNC10(lpotm, lplogfont, desU.x, desU.y, &devX, &devY);
                pGoffset[glyph_index].du = (FUNC13(devX) - piAdvance[glyph_index-1]);
                pGoffset[glyph_index].dv = FUNC13(devY);
            }
            break;
        }

        case GPOS_LOOKUP_ATTACH_MARK_TO_MARK:
        {
            double devX, devY;
            POINT desU = {0,0};
            int write_dir = (analysis->fRTL && !analysis->fLogicalOrder) ? -1 : 1;
            if (FUNC7(look, analysis, glyphs, glyph_index, glyph_count, ppem, &desU))
            {
                FUNC10(lpotm, lplogfont, desU.x, desU.y, &devX, &devY);
                if (analysis->fRTL && analysis->fLogicalOrder) devX *= -1;
                pGoffset[glyph_index].du = FUNC13(devX) + pGoffset[glyph_index - write_dir].du;
                pGoffset[glyph_index].dv = FUNC13(devY) + pGoffset[glyph_index - write_dir].dv;
            }
            break;
        }

        case GPOS_LOOKUP_POSITION_CONTEXT:
            return FUNC3(script_cache, lpotm, lplogfont, analysis, piAdvance,
                    lookup, look, glyphs, glyph_index, glyph_count, pGoffset);

        case GPOS_LOOKUP_POSITION_CONTEXT_CHAINED:
            return FUNC2(script_cache, lpotm, lplogfont, analysis, piAdvance,
                    lookup, look, glyphs, glyph_index, glyph_count, pGoffset);

        default:
            FUNC0("Unhandled GPOS lookup type %#x.\n", type);
    }
    return 1;
}