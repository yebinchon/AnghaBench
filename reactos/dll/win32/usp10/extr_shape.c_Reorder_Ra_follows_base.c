
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lexical_function ;
typedef int WORD ;
typedef int WCHAR ;
struct TYPE_3__ {scalar_t__ ralf; size_t start; int base; } ;
typedef TYPE_1__ IndicSyllable ;


 int TRACE (char*,int) ;

__attribute__((used)) static void Reorder_Ra_follows_base(WCHAR *pwChar, IndicSyllable *s, lexical_function lexical)
{
    if (s->ralf >= 0)
    {
        int j;
        WORD Ra = pwChar[s->start];
        WORD H = pwChar[s->start+1];

        TRACE("Doing reorder of Ra to %i\n",s->base);
        for (j = s->start; j < s->base-1; j++)
            pwChar[j] = pwChar[j+2];
        pwChar[s->base-1] = Ra;
        pwChar[s->base] = H;

        s->ralf = s->base-1;
        s->base -= 2;
    }
}
