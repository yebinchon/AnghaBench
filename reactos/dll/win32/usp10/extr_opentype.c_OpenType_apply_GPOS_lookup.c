
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_6__ {int LookupList; } ;
struct TYPE_5__ {scalar_t__ GPOS_Table; } ;
typedef TYPE_1__ ScriptCache ;
typedef int SCRIPT_ANALYSIS ;
typedef int OUTLINETEXTMETRICW ;
typedef int OT_LookupList ;
typedef int LOGFONTW ;
typedef TYPE_2__ GPOS_Header ;
typedef int GOFFSET ;
typedef int BYTE ;


 int GET_BE_WORD (int ) ;
 unsigned int GPOS_apply_lookup (TYPE_1__ const*,int const*,int const*,int const*,int*,int const*,unsigned int,int const*,unsigned int,unsigned int,int *) ;

unsigned int OpenType_apply_GPOS_lookup(const ScriptCache *script_cache, const OUTLINETEXTMETRICW *otm,
        const LOGFONTW *logfont, const SCRIPT_ANALYSIS *analysis, int *advance, unsigned int lookup_index,
        const WORD *glyphs, unsigned int glyph_index, unsigned int glyph_count, GOFFSET *goffset)
{
    const GPOS_Header *header = (const GPOS_Header *)script_cache->GPOS_Table;
    const OT_LookupList *lookup = (const OT_LookupList*)((const BYTE*)header + GET_BE_WORD(header->LookupList));

    return GPOS_apply_lookup(script_cache, otm, logfont, analysis, advance, lookup,
            lookup_index, glyphs, glyph_index, glyph_count, goffset);
}
