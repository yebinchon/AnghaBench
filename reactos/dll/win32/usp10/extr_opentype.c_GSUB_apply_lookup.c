
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef enum gsub_lookup_type { ____Placeholder_gsub_lookup_type } gsub_lookup_type ;
typedef int WORD ;
struct TYPE_15__ {int SubstFormat; int ExtensionLookupType; } ;
struct TYPE_14__ {int * Lookup; } ;
struct TYPE_13__ {int * SubTable; int SubTableCount; int LookupFlag; int LookupType; } ;
typedef TYPE_1__ OT_LookupTable ;
typedef TYPE_2__ OT_LookupList ;
typedef size_t INT ;
typedef TYPE_3__ GSUB_ExtensionPosFormat1 ;
typedef int BYTE ;


 int FIXME (char*,...) ;
 int GET_BE_WORD (int ) ;
 size_t GSUB_E_NOGLYPH ;







 size_t GSUB_apply_AlternateSubst (TYPE_1__ const*,int *,size_t,size_t,size_t*) ;
 size_t GSUB_apply_ChainContextSubst (TYPE_2__ const*,TYPE_1__ const*,int *,size_t,size_t,size_t*) ;
 size_t GSUB_apply_ContextSubst (TYPE_2__ const*,TYPE_1__ const*,int *,size_t,size_t,size_t*) ;
 size_t GSUB_apply_LigatureSubst (TYPE_1__ const*,int *,size_t,size_t,size_t*) ;
 size_t GSUB_apply_MultipleSubst (TYPE_1__ const*,int *,size_t,size_t,size_t*) ;
 size_t GSUB_apply_SingleSubst (TYPE_1__ const*,int *,size_t,size_t,size_t*) ;
 int TRACE (char*,int,...) ;
 int WARN (char*) ;

__attribute__((used)) static INT GSUB_apply_lookup(const OT_LookupList* lookup, INT lookup_index, WORD *glyphs, INT glyph_index, INT write_dir, INT *glyph_count)
{
    int offset;
    enum gsub_lookup_type type;
    const OT_LookupTable *look;

    offset = GET_BE_WORD(lookup->Lookup[lookup_index]);
    look = (const OT_LookupTable*)((const BYTE*)lookup + offset);
    type = GET_BE_WORD(look->LookupType);
    TRACE("type %#x, flag %#x, subtables %u.\n", type,
            GET_BE_WORD(look->LookupFlag),GET_BE_WORD(look->SubTableCount));

    if (type == 131)
    {
        if (GET_BE_WORD(look->SubTableCount))
        {
            const GSUB_ExtensionPosFormat1 *ext = (const GSUB_ExtensionPosFormat1 *)((const BYTE *)look + GET_BE_WORD(look->SubTable[0]));
            if (GET_BE_WORD(ext->SubstFormat) == 1)
            {
                type = GET_BE_WORD(ext->ExtensionLookupType);
                TRACE("extension type %i\n",type);
            }
            else
            {
                FIXME("Unhandled Extension Substitution Format %i\n",GET_BE_WORD(ext->SubstFormat));
            }
        }
        else
        {
            WARN("lookup type is Extension Substitution but no extension subtable exists\n");
        }
    }
    switch(type)
    {
        case 128:
            return GSUB_apply_SingleSubst(look, glyphs, glyph_index, write_dir, glyph_count);
        case 129:
            return GSUB_apply_MultipleSubst(look, glyphs, glyph_index, write_dir, glyph_count);
        case 134:
            return GSUB_apply_AlternateSubst(look, glyphs, glyph_index, write_dir, glyph_count);
        case 130:
            return GSUB_apply_LigatureSubst(look, glyphs, glyph_index, write_dir, glyph_count);
        case 133:
            return GSUB_apply_ContextSubst(lookup, look, glyphs, glyph_index, write_dir, glyph_count);
        case 132:
            return GSUB_apply_ChainContextSubst(lookup, look, glyphs, glyph_index, write_dir, glyph_count);
        case 131:
            FIXME("Extension Substitution types not valid here\n");
            break;
        default:
            FIXME("Unhandled GSUB lookup type %#x.\n", type);
    }
    return GSUB_E_NOGLYPH;
}
