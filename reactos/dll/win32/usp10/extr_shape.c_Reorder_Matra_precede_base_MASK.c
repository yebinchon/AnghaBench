#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ (* lexical_function ) (int /*<<< orphan*/ ) ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {scalar_t__ end; scalar_t__ base; size_t ralf; size_t blwf; size_t pref; } ;
typedef  TYPE_1__ IndicSyllable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ lex_Matra_pre ; 

__attribute__((used)) static void FUNC1(WCHAR *pwChar, IndicSyllable *s, lexical_function lexical)
{
    int i;

    /* reorder Matras */
    if (s->end > s->base)
    {
        for (i = 1; i <= s->end-s->base; i++)
        {
            if (lexical(pwChar[s->base+i]) == lex_Matra_pre)
            {
                int j;
                WCHAR c = pwChar[s->base+i];
                FUNC0("Doing reorder of %x %x\n",c,pwChar[s->base]);
                for (j = s->base+i; j > s->base; j--)
                    pwChar[j] = pwChar[j-1];
                pwChar[s->base] = c;

                if (s->ralf >= s->base) s->ralf++;
                if (s->blwf >= s->base) s->blwf++;
                if (s->pref >= s->base) s->pref++;
                s->base ++;
            }
        }
    }
}