#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  (* lexical_function ) (int /*<<< orphan*/  const) ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_7__ {int ralf; int start; size_t base; int end; int blwf; int pref; } ;
typedef  int /*<<< orphan*/  ScriptCache ;
typedef  int /*<<< orphan*/  SCRIPT_ANALYSIS ;
typedef  TYPE_1__ IndicSyllable ;
typedef  int /*<<< orphan*/  HDC ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_1__*,int /*<<< orphan*/  (*) (int /*<<< orphan*/  const),scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_1__*,int /*<<< orphan*/  (*) (int /*<<< orphan*/  const),scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_1__*,int /*<<< orphan*/  (*) (int /*<<< orphan*/  const),scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_1__*,int /*<<< orphan*/  (*) (int /*<<< orphan*/  const)) ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(HDC hdc, SCRIPT_ANALYSIS *psa, ScriptCache *psc,
        const WCHAR *input, IndicSyllable *s, lexical_function lex, BOOL modern)
{
    int i;
    BOOL blwf = FALSE;
    BOOL pref = FALSE;

    /* remove ralf from consideration */
    if (FUNC3(hdc, psa, psc, input, s, lex))
    {
        s->ralf = s->start;
        s->start+=2;
    }

    /* try to find a base consonant */
    if (!FUNC4( lex(input[s->base]) ))
    {
        for (i = s->end; i >= s->start; i--)
            if (FUNC4( lex(input[i]) ))
            {
                s->base = i;
                break;
            }
    }

    while ((blwf = FUNC0(hdc, psa, psc, input, s, lex, modern)) || FUNC1(hdc, psa, psc, input, s, lex, modern) || (pref = FUNC2(hdc, psa, psc, input, s, lex, modern)))
    {
        if (blwf && s->blwf == -1)
            s->blwf = s->base - 1;
        if (pref && s->pref == -1)
            s->pref = s->base - 1;

        for (i = s->base-1; i >= s->start; i--)
            if (FUNC4( lex(input[i]) ))
            {
                s->base = i;
                break;
            }
    }

    if (s->ralf >= 0)
        s->start = s->ralf;

    if (s->ralf == s->base)
        s->ralf = -1;

    return s->base;
}