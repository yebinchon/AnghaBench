
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ (* lexical_function ) (int const) ;
typedef int WORD ;
typedef int WCHAR ;
struct TYPE_4__ {int start; int base; } ;
typedef TYPE_1__ IndicSyllable ;


 int TRACE (char*,int,int) ;
 scalar_t__ lex_Matra_pre ;

__attribute__((used)) static void SecondReorder_Matra_precede_base(const WCHAR *chars, const IndicSyllable *s,
        WORD *glyphs, const IndicSyllable *g, lexical_function lexical)
{
    int i;


    for (i = s->start; i < s->base; i++)
    {
        if (lexical(chars[i]) == lex_Matra_pre)
        {
            int j;
            int g_start = g->start + i - s->start;
            if (g_start < g->base -1 )
            {
                WCHAR og = glyphs[g_start];
                TRACE("Doing reorder of matra from %i to %i\n",g_start,g->base);
                for (j = g_start; j < g->base-1; j++)
                    glyphs[j] = glyphs[j+1];
                glyphs[g->base-1] = og;
            }
        }
    }
}
