#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  enum gsub_lookup_type { ____Placeholder_gsub_lookup_type } gsub_lookup_type ;
typedef  int /*<<< orphan*/  WORD ;
struct TYPE_15__ {int /*<<< orphan*/  SubstFormat; int /*<<< orphan*/  ExtensionLookupType; } ;
struct TYPE_14__ {int /*<<< orphan*/ * Lookup; } ;
struct TYPE_13__ {int /*<<< orphan*/ * SubTable; int /*<<< orphan*/  SubTableCount; int /*<<< orphan*/  LookupFlag; int /*<<< orphan*/  LookupType; } ;
typedef  TYPE_1__ OT_LookupTable ;
typedef  TYPE_2__ OT_LookupList ;
typedef  size_t INT ;
typedef  TYPE_3__ GSUB_ExtensionPosFormat1 ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 size_t GSUB_E_NOGLYPH ; 
#define  GSUB_LOOKUP_ALTERNATE 134 
#define  GSUB_LOOKUP_CONTEXT 133 
#define  GSUB_LOOKUP_CONTEXT_CHAINED 132 
#define  GSUB_LOOKUP_EXTENSION 131 
#define  GSUB_LOOKUP_LIGATURE 130 
#define  GSUB_LOOKUP_MULTIPLE 129 
#define  GSUB_LOOKUP_SINGLE 128 
 size_t FUNC2 (TYPE_1__ const*,int /*<<< orphan*/ *,size_t,size_t,size_t*) ; 
 size_t FUNC3 (TYPE_2__ const*,TYPE_1__ const*,int /*<<< orphan*/ *,size_t,size_t,size_t*) ; 
 size_t FUNC4 (TYPE_2__ const*,TYPE_1__ const*,int /*<<< orphan*/ *,size_t,size_t,size_t*) ; 
 size_t FUNC5 (TYPE_1__ const*,int /*<<< orphan*/ *,size_t,size_t,size_t*) ; 
 size_t FUNC6 (TYPE_1__ const*,int /*<<< orphan*/ *,size_t,size_t,size_t*) ; 
 size_t FUNC7 (TYPE_1__ const*,int /*<<< orphan*/ *,size_t,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static INT FUNC10(const OT_LookupList* lookup, INT lookup_index, WORD *glyphs, INT glyph_index, INT write_dir, INT *glyph_count)
{
    int offset;
    enum gsub_lookup_type type;
    const OT_LookupTable *look;

    offset = FUNC1(lookup->Lookup[lookup_index]);
    look = (const OT_LookupTable*)((const BYTE*)lookup + offset);
    type = FUNC1(look->LookupType);
    FUNC8("type %#x, flag %#x, subtables %u.\n", type,
            FUNC1(look->LookupFlag),FUNC1(look->SubTableCount));

    if (type == GSUB_LOOKUP_EXTENSION)
    {
        if (FUNC1(look->SubTableCount))
        {
            const GSUB_ExtensionPosFormat1 *ext = (const GSUB_ExtensionPosFormat1 *)((const BYTE *)look + FUNC1(look->SubTable[0]));
            if (FUNC1(ext->SubstFormat) == 1)
            {
                type = FUNC1(ext->ExtensionLookupType);
                FUNC8("extension type %i\n",type);
            }
            else
            {
                FUNC0("Unhandled Extension Substitution Format %i\n",FUNC1(ext->SubstFormat));
            }
        }
        else
        {
            FUNC9("lookup type is Extension Substitution but no extension subtable exists\n");
        }
    }
    switch(type)
    {
        case GSUB_LOOKUP_SINGLE:
            return FUNC7(look, glyphs, glyph_index, write_dir, glyph_count);
        case GSUB_LOOKUP_MULTIPLE:
            return FUNC6(look, glyphs, glyph_index, write_dir, glyph_count);
        case GSUB_LOOKUP_ALTERNATE:
            return FUNC2(look, glyphs, glyph_index, write_dir, glyph_count);
        case GSUB_LOOKUP_LIGATURE:
            return FUNC5(look, glyphs, glyph_index, write_dir, glyph_count);
        case GSUB_LOOKUP_CONTEXT:
            return FUNC4(lookup, look, glyphs, glyph_index, write_dir, glyph_count);
        case GSUB_LOOKUP_CONTEXT_CHAINED:
            return FUNC3(lookup, look, glyphs, glyph_index, write_dir, glyph_count);
        case GSUB_LOOKUP_EXTENSION:
            FUNC0("Extension Substitution types not valid here\n");
            break;
        default:
            FUNC0("Unhandled GSUB lookup type %#x.\n", type);
    }
    return GSUB_E_NOGLYPH;
}