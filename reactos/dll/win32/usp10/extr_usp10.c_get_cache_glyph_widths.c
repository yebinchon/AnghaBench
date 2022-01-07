
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t WORD ;
struct TYPE_2__ {int ** widths; } ;
typedef TYPE_1__ ScriptCache ;
typedef scalar_t__ SCRIPT_CACHE ;
typedef int BOOL ;
typedef int ABC ;


 int FALSE ;
 size_t GLYPH_BLOCK_MASK ;
 size_t GLYPH_BLOCK_SHIFT ;
 int TRUE ;
 int memcmp (int *,int const*,int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static inline BOOL get_cache_glyph_widths(SCRIPT_CACHE *psc, WORD glyph, ABC *abc)
{
    static const ABC nil;
    ABC *block = ((ScriptCache *)*psc)->widths[glyph >> GLYPH_BLOCK_SHIFT];

    if (!block || !memcmp(&block[glyph & GLYPH_BLOCK_MASK], &nil, sizeof(ABC))) return FALSE;
    memcpy(abc, &block[glyph & GLYPH_BLOCK_MASK], sizeof(ABC));
    return TRUE;
}
