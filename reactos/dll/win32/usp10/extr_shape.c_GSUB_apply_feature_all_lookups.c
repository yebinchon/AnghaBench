
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_3__ {int lookup_count; int * lookups; } ;
typedef TYPE_1__ LoadedFeature ;


 int GSUB_E_NOGLYPH ;
 int OpenType_apply_GSUB_lookup (void const*,int ,int *,unsigned int,int,int*) ;
 int TRACE (char*,...) ;

__attribute__((used)) static int GSUB_apply_feature_all_lookups(const void *header, LoadedFeature *feature,
        WORD *glyphs, unsigned int glyph_index, int write_dir, int *glyph_count)
{
    int i;
    int out_index = GSUB_E_NOGLYPH;

    TRACE("%i lookups\n", feature->lookup_count);
    for (i = 0; i < feature->lookup_count; i++)
    {
        out_index = OpenType_apply_GSUB_lookup(header, feature->lookups[i], glyphs, glyph_index, write_dir, glyph_count);
        if (out_index != GSUB_E_NOGLYPH)
            break;
    }
    if (out_index == GSUB_E_NOGLYPH)
        TRACE("lookups found no glyphs\n");
    else
    {
        int out2;
        out2 = GSUB_apply_feature_all_lookups(header, feature, glyphs, glyph_index, write_dir, glyph_count);
        if (out2!=GSUB_E_NOGLYPH)
            out_index = out2;
    }
    return out_index;
}
