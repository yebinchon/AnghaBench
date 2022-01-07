
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_7__ {unsigned int lookup_count; int * lookups; } ;
struct TYPE_6__ {scalar_t__ fRTL; scalar_t__ fLogicalOrder; } ;
typedef int ScriptCache ;
typedef TYPE_1__ SCRIPT_ANALYSIS ;
typedef int OUTLINETEXTMETRICW ;
typedef TYPE_2__ LoadedFeature ;
typedef int LOGFONTW ;
typedef int GOFFSET ;


 scalar_t__ OpenType_apply_GPOS_lookup (int const*,int const*,int const*,TYPE_1__ const*,int*,int ,int const*,unsigned int,int,int *) ;
 int TRACE (char*,unsigned int) ;

__attribute__((used)) static void GPOS_apply_feature(const ScriptCache *psc, const OUTLINETEXTMETRICW *otm,
        const LOGFONTW *logfont, const SCRIPT_ANALYSIS *analysis, int *advance,
        const LoadedFeature *feature, const WORD *glyphs, int glyph_count, GOFFSET *goffset)
{
    int dir = analysis->fLogicalOrder && analysis->fRTL ? -1 : 1;
    unsigned int start_idx, i, j;

    TRACE("%i lookups\n", feature->lookup_count);

    start_idx = dir < 0 ? glyph_count - 1 : 0;
    for (i = 0; i < feature->lookup_count; i++)
    {
        for (j = 0; j < glyph_count; )
            j += OpenType_apply_GPOS_lookup(psc, otm, logfont, analysis, advance,
                    feature->lookups[i], glyphs, start_idx + dir * j, glyph_count, goffset);
    }
}
