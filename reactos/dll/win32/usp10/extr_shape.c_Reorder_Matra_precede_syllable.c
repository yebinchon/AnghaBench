
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ (* lexical_function ) (int ) ;
typedef int WCHAR ;
struct TYPE_3__ {scalar_t__ end; scalar_t__ base; int start; scalar_t__ ralf; scalar_t__ blwf; scalar_t__ pref; } ;
typedef TYPE_1__ IndicSyllable ;


 int TRACE (char*,int ,int) ;
 scalar_t__ lex_Matra_pre ;

__attribute__((used)) static void Reorder_Matra_precede_syllable(WCHAR *pwChar, IndicSyllable *s, lexical_function lexical)
{
    int i;


    if (s->end > s->base)
    {
        for (i = 1; i <= s->end-s->base; i++)
        {
            if (lexical(pwChar[s->base+i]) == lex_Matra_pre)
            {
                int j;
                WCHAR c = pwChar[s->base+i];
                TRACE("Doing reorder of %x to %i\n",c,s->start);
                for (j = s->base+i; j > s->start; j--)
                    pwChar[j] = pwChar[j-1];
                pwChar[s->start] = c;

                if (s->ralf >= 0) s->ralf++;
                if (s->blwf >= 0) s->blwf++;
                if (s->pref >= 0) s->pref++;
                s->base ++;
            }
        }
    }
}
