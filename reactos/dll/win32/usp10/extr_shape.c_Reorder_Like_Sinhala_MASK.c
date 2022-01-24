#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ (* lexical_function ) (int /*<<< orphan*/ ) ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_5__ {size_t start; size_t base; size_t end; } ;
typedef  TYPE_1__ IndicSyllable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,scalar_t__ (*) (int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,scalar_t__ (*) (int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,size_t,size_t) ; 
 scalar_t__ lex_Vowel ; 

__attribute__((used)) static void FUNC3(WCHAR *pwChar, IndicSyllable *s, lexical_function lexical)
{
    FUNC2("Syllable (%i..%i..%i)\n",s->start,s->base,s->end);
    if (s->start == s->base && s->base == s->end)  return;
    if (lexical(pwChar[s->base]) == lex_Vowel) return;

    FUNC1(pwChar, s, lexical);
    FUNC0(pwChar, s, lexical);
}