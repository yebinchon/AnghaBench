
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ (* lexical_function ) (int const) ;
typedef int WORD ;
typedef int WCHAR ;
struct TYPE_6__ {size_t start; size_t base; size_t end; } ;
typedef TYPE_1__ IndicSyllable ;


 int SecondReorder_Blwf_follows_matra (int const*,TYPE_1__ const*,int *,TYPE_1__ const*,scalar_t__ (*) (int const)) ;
 int TRACE (char*,size_t,size_t,size_t) ;
 scalar_t__ lex_Vowel ;

__attribute__((used)) static void SecondReorder_Like_Telugu(const WCHAR *chars, const IndicSyllable *s,
        WORD *glyphs, const IndicSyllable *g, lexical_function lexical)
{
    TRACE("Syllable (%i..%i..%i)\n",s->start,s->base,s->end);
    TRACE("Glyphs (%i..%i..%i)\n",g->start,g->base,g->end);
    if (s->start == s->base && s->base == s->end) return;
    if (lexical(chars[s->base]) == lex_Vowel) return;

    SecondReorder_Blwf_follows_matra(chars, s, glyphs, g, lexical);
}
