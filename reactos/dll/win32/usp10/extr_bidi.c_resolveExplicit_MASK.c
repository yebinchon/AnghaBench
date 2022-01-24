#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ WORD ;
struct TYPE_2__ {int level; scalar_t__ override; int /*<<< orphan*/  isolate; } ;
typedef  TYPE_1__ StackItem ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ AL ; 
 scalar_t__ B ; 
 scalar_t__ BN ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FSI ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (int) ; 
 scalar_t__ L ; 
 scalar_t__ LRE ; 
 scalar_t__ LRI ; 
 scalar_t__ LRO ; 
 int MAX_DEPTH ; 
 scalar_t__ NI ; 
 scalar_t__ PDF ; 
 scalar_t__ PDI ; 
 scalar_t__ R ; 
 scalar_t__ RLE ; 
 scalar_t__ RLI ; 
 scalar_t__ RLO ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(int level, WORD *pclass, WORD *poutLevel, WORD *poutOverrides, int count, BOOL initialOverride)
{
    /* X1 */
    int overflow_isolate_count = 0;
    int overflow_embedding_count = 0;
    int valid_isolate_count = 0;
    int i;

    StackItem stack[MAX_DEPTH+2];
    int stack_top = MAX_DEPTH+1;

    stack[stack_top].level = level;
    stack[stack_top].override = NI;
    stack[stack_top].isolate = FALSE;

    if (initialOverride)
    {
        if (FUNC2(level))
            FUNC4(level, R, FALSE);
        else
            FUNC4(level, L, FALSE);
    }

    for (i = 0; i < count; i++)
    {
        poutOverrides[i] = stack[stack_top].override;

        /* X2 */
        if (pclass[i] == RLE)
        {
            int least_odd = FUNC1(stack[stack_top].level);
            poutLevel[i] = stack[stack_top].level;
            if (FUNC5(least_odd))
                FUNC4(least_odd, NI, FALSE);
            else if (overflow_isolate_count == 0)
                overflow_embedding_count++;
        }
        /* X3 */
        else if (pclass[i] == LRE)
        {
            int least_even = FUNC0(stack[stack_top].level);
            poutLevel[i] = stack[stack_top].level;
            if (FUNC5(least_even))
                FUNC4(least_even, NI, FALSE);
            else if (overflow_isolate_count == 0)
                overflow_embedding_count++;
        }
        /* X4 */
        else if (pclass[i] == RLO)
        {
            int least_odd = FUNC1(stack[stack_top].level);
            poutLevel[i] = stack[stack_top].level;
            if (FUNC5(least_odd))
                FUNC4(least_odd, R, FALSE);
            else if (overflow_isolate_count == 0)
                overflow_embedding_count++;
        }
        /* X5 */
        else if (pclass[i] == LRO)
        {
            int least_even = FUNC0(stack[stack_top].level);
            poutLevel[i] = stack[stack_top].level;
            if (FUNC5(least_even))
                FUNC4(least_even, L, FALSE);
            else if (overflow_isolate_count == 0)
                overflow_embedding_count++;
        }
        /* X5a */
        else if (pclass[i] == RLI)
        {
            int least_odd = FUNC1(stack[stack_top].level);
            poutLevel[i] = stack[stack_top].level;
            if (FUNC5(least_odd))
            {
                valid_isolate_count++;
                FUNC4(least_odd, NI, TRUE);
            }
            else
                overflow_isolate_count++;
        }
        /* X5b */
        else if (pclass[i] == LRI)
        {
            int least_even = FUNC0(stack[stack_top].level);
            poutLevel[i] = stack[stack_top].level;
            if (FUNC5(least_even))
            {
                valid_isolate_count++;
                FUNC4(least_even, NI, TRUE);
            }
            else
                overflow_isolate_count++;
        }
        /* X5c */
        else if (pclass[i] == FSI)
        {
            int j;
            int new_level = 0;
            int skipping = 0;
            poutLevel[i] = stack[stack_top].level;
            for (j = i+1; j < count; j++)
            {
                if (pclass[j] == LRI || pclass[j] == RLI || pclass[j] == FSI)
                {
                    skipping++;
                    continue;
                }
                else if (pclass[j] == PDI)
                {
                    if (skipping)
                        skipping --;
                    else
                        break;
                    continue;
                }

                if (skipping) continue;

                if (pclass[j] == L)
                {
                    new_level = 0;
                    break;
                }
                else if (pclass[j] == R || pclass[j] == AL)
                {
                    new_level = 1;
                    break;
                }
            }
            if (FUNC2(new_level))
            {
                int least_odd = FUNC1(stack[stack_top].level);
                if (FUNC5(least_odd))
                {
                    valid_isolate_count++;
                    FUNC4(least_odd, NI, TRUE);
                }
                else
                    overflow_isolate_count++;
            }
            else
            {
                int least_even = FUNC0(stack[stack_top].level);
                if (FUNC5(least_even))
                {
                    valid_isolate_count++;
                    FUNC4(least_even, NI, TRUE);
                }
                else
                    overflow_isolate_count++;
            }
        }
        /* X6 */
        else if (pclass[i] != B && pclass[i] != BN && pclass[i] != PDI && pclass[i] != PDF)
        {
            poutLevel[i] = stack[stack_top].level;
            if (stack[stack_top].override != NI)
                pclass[i] = stack[stack_top].override;
        }
        /* X6a */
        else if (pclass[i] == PDI)
        {
            if (overflow_isolate_count) overflow_isolate_count--;
            else if (!valid_isolate_count) {/* do nothing */}
            else
            {
                overflow_embedding_count = 0;
                while (!stack[stack_top].isolate) FUNC3();
                FUNC3();
                valid_isolate_count --;
            }
            poutLevel[i] = stack[stack_top].level;
        }
        /* X7 */
        else if (pclass[i] == PDF)
        {
            poutLevel[i] = stack[stack_top].level;
            if (overflow_isolate_count) {/* do nothing */}
            else if (overflow_embedding_count) overflow_embedding_count--;
            else if (!stack[stack_top].isolate && stack_top < (MAX_DEPTH+1))
                FUNC3();
        }
        /* X8: Nothing */
    }
    /* X9: Based on 5.2 Retaining Explicit Formatting Characters */
    for (i = 0; i < count ; i++)
        if (pclass[i] == RLE || pclass[i] == LRE || pclass[i] == RLO || pclass[i] == LRO || pclass[i] == PDF)
            pclass[i] = BN;
}