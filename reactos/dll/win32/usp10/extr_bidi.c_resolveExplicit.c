
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ WORD ;
struct TYPE_2__ {int level; scalar_t__ override; int isolate; } ;
typedef TYPE_1__ StackItem ;
typedef scalar_t__ BOOL ;


 scalar_t__ AL ;
 scalar_t__ B ;
 scalar_t__ BN ;
 int FALSE ;
 scalar_t__ FSI ;
 int GreaterEven (scalar_t__) ;
 int GreaterOdd (int) ;
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
 int TRUE ;
 scalar_t__ odd (int) ;
 int pop_stack () ;
 int push_stack (int,scalar_t__,int ) ;
 scalar_t__ valid_level (int) ;

__attribute__((used)) static void resolveExplicit(int level, WORD *pclass, WORD *poutLevel, WORD *poutOverrides, int count, BOOL initialOverride)
{

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
        if (odd(level))
            push_stack(level, R, FALSE);
        else
            push_stack(level, L, FALSE);
    }

    for (i = 0; i < count; i++)
    {
        poutOverrides[i] = stack[stack_top].override;


        if (pclass[i] == RLE)
        {
            int least_odd = GreaterOdd(stack[stack_top].level);
            poutLevel[i] = stack[stack_top].level;
            if (valid_level(least_odd))
                push_stack(least_odd, NI, FALSE);
            else if (overflow_isolate_count == 0)
                overflow_embedding_count++;
        }

        else if (pclass[i] == LRE)
        {
            int least_even = GreaterEven(stack[stack_top].level);
            poutLevel[i] = stack[stack_top].level;
            if (valid_level(least_even))
                push_stack(least_even, NI, FALSE);
            else if (overflow_isolate_count == 0)
                overflow_embedding_count++;
        }

        else if (pclass[i] == RLO)
        {
            int least_odd = GreaterOdd(stack[stack_top].level);
            poutLevel[i] = stack[stack_top].level;
            if (valid_level(least_odd))
                push_stack(least_odd, R, FALSE);
            else if (overflow_isolate_count == 0)
                overflow_embedding_count++;
        }

        else if (pclass[i] == LRO)
        {
            int least_even = GreaterEven(stack[stack_top].level);
            poutLevel[i] = stack[stack_top].level;
            if (valid_level(least_even))
                push_stack(least_even, L, FALSE);
            else if (overflow_isolate_count == 0)
                overflow_embedding_count++;
        }

        else if (pclass[i] == RLI)
        {
            int least_odd = GreaterOdd(stack[stack_top].level);
            poutLevel[i] = stack[stack_top].level;
            if (valid_level(least_odd))
            {
                valid_isolate_count++;
                push_stack(least_odd, NI, TRUE);
            }
            else
                overflow_isolate_count++;
        }

        else if (pclass[i] == LRI)
        {
            int least_even = GreaterEven(stack[stack_top].level);
            poutLevel[i] = stack[stack_top].level;
            if (valid_level(least_even))
            {
                valid_isolate_count++;
                push_stack(least_even, NI, TRUE);
            }
            else
                overflow_isolate_count++;
        }

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
            if (odd(new_level))
            {
                int least_odd = GreaterOdd(stack[stack_top].level);
                if (valid_level(least_odd))
                {
                    valid_isolate_count++;
                    push_stack(least_odd, NI, TRUE);
                }
                else
                    overflow_isolate_count++;
            }
            else
            {
                int least_even = GreaterEven(stack[stack_top].level);
                if (valid_level(least_even))
                {
                    valid_isolate_count++;
                    push_stack(least_even, NI, TRUE);
                }
                else
                    overflow_isolate_count++;
            }
        }

        else if (pclass[i] != B && pclass[i] != BN && pclass[i] != PDI && pclass[i] != PDF)
        {
            poutLevel[i] = stack[stack_top].level;
            if (stack[stack_top].override != NI)
                pclass[i] = stack[stack_top].override;
        }

        else if (pclass[i] == PDI)
        {
            if (overflow_isolate_count) overflow_isolate_count--;
            else if (!valid_isolate_count) { }
            else
            {
                overflow_embedding_count = 0;
                while (!stack[stack_top].isolate) pop_stack();
                pop_stack();
                valid_isolate_count --;
            }
            poutLevel[i] = stack[stack_top].level;
        }

        else if (pclass[i] == PDF)
        {
            poutLevel[i] = stack[stack_top].level;
            if (overflow_isolate_count) { }
            else if (overflow_embedding_count) overflow_embedding_count--;
            else if (!stack[stack_top].isolate && stack_top < (MAX_DEPTH+1))
                pop_stack();
        }

    }

    for (i = 0; i < count ; i++)
        if (pclass[i] == RLE || pclass[i] == LRE || pclass[i] == RLO || pclass[i] == LRO || pclass[i] == PDF)
            pclass[i] = BN;
}
