
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ (* lexical_function ) (int ) ;
typedef int WCHAR ;
struct TYPE_5__ {size_t start; size_t base; size_t end; } ;
typedef TYPE_1__ IndicSyllable ;


 int Reorder_Matra_precede_syllable (int *,TYPE_1__*,scalar_t__ (*) (int )) ;
 int Reorder_Ra_follows_matra (int *,TYPE_1__*,scalar_t__ (*) (int )) ;
 int TRACE (char*,size_t,size_t,size_t) ;
 scalar_t__ lex_Vowel ;

__attribute__((used)) static void Reorder_Like_Devanagari(WCHAR *pwChar, IndicSyllable *s, lexical_function lexical)
{
    TRACE("Syllable (%i..%i..%i)\n",s->start,s->base,s->end);
    if (s->start == s->base && s->base == s->end) return;
    if (lexical(pwChar[s->base]) == lex_Vowel) return;

    Reorder_Ra_follows_matra(pwChar, s, lexical);
    Reorder_Matra_precede_syllable(pwChar, s, lexical);
}
