
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lexical_function ;
typedef int WORD ;
typedef int WCHAR ;
struct TYPE_4__ {scalar_t__ pref; int base; } ;
typedef TYPE_1__ IndicSyllable ;


 int TRACE (char*,size_t,int) ;

__attribute__((used)) static void SecondReorder_Pref_precede_base(const IndicSyllable *s,
        WORD *glyphs, const IndicSyllable *g, lexical_function lexical)
{
    if (s->pref >= 0 && g->pref > g->base)
    {
        int j;
        WCHAR og = glyphs[g->pref];
        TRACE("Doing reorder of pref from %i to %i\n",g->pref,g->base);
        for (j = g->pref; j > g->base; j--)
            glyphs[j] = glyphs[j-1];
        glyphs[g->base] = og;
    }
}
