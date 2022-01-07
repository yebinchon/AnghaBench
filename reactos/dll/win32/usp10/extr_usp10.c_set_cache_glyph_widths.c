
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
 int GLYPH_BLOCK_SIZE ;
 int TRUE ;
 int * heap_alloc_zero (int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static inline BOOL set_cache_glyph_widths(SCRIPT_CACHE *psc, WORD glyph, ABC *abc)
{
    ABC **block = &((ScriptCache *)*psc)->widths[glyph >> GLYPH_BLOCK_SHIFT];

    if (!*block && !(*block = heap_alloc_zero(sizeof(ABC) * GLYPH_BLOCK_SIZE))) return FALSE;
    memcpy(&(*block)[glyph & GLYPH_BLOCK_MASK], abc, sizeof(ABC));
    return TRUE;
}
