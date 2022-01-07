
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_2__ {int LookupList; } ;
typedef int OT_LookupList ;
typedef TYPE_1__ GSUB_Header ;
typedef int BYTE ;


 int GET_BE_WORD (int ) ;
 int GSUB_apply_lookup (int const*,unsigned int,int *,unsigned int,int,int*) ;

int OpenType_apply_GSUB_lookup(const void *table, unsigned int lookup_index, WORD *glyphs,
        unsigned int glyph_index, int write_dir, int *glyph_count)
{
    const GSUB_Header *header = (const GSUB_Header *)table;
    const OT_LookupList *lookup = (const OT_LookupList*)((const BYTE*)header + GET_BE_WORD(header->LookupList));

    return GSUB_apply_lookup(lookup, lookup_index, glyphs, glyph_index, write_dir, glyph_count);
}
