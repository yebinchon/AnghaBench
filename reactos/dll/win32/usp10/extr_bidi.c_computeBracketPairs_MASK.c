#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int WCHAR ;
struct TYPE_9__ {int start; int end; } ;
struct TYPE_8__ {int length; TYPE_1__* item; } ;
struct TYPE_7__ {int ch; } ;
typedef  int /*<<< orphan*/  SIZE_T ;
typedef  TYPE_2__ IsolatedRun ;
typedef  TYPE_3__ BracketPair ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  bidi_bracket_table ; 
 int /*<<< orphan*/  compr ; 
 unsigned short FUNC1 (int /*<<< orphan*/ ,int) ; 
 int* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void**,int /*<<< orphan*/ *,unsigned int,int) ; 

__attribute__((used)) static BracketPair *FUNC6(IsolatedRun *iso_run)
{
    WCHAR *open_stack;
    int *stack_index;
    int stack_top = iso_run->length;
    unsigned int pair_count = 0;
    BracketPair *out = NULL;
    SIZE_T out_size = 0;
    int i;

    open_stack = FUNC2(iso_run->length * sizeof(*open_stack));
    stack_index = FUNC2(iso_run->length * sizeof(*stack_index));

    for (i = 0; i < iso_run->length; i++)
    {
        unsigned short ubv = FUNC1(bidi_bracket_table, iso_run->item[i].ch);

        if (!ubv)
            continue;

        if ((ubv >> 8) == 0)
        {
            --stack_top;
            open_stack[stack_top] = iso_run->item[i].ch + (signed char)(ubv & 0xff);
            /* Deal with canonical equivalent U+2329/232A and U+3008/3009. */
            if (open_stack[stack_top] == 0x232a)
                open_stack[stack_top] = 0x3009;
            stack_index[stack_top] = i;
        }
        else if ((ubv >> 8) == 1)
        {
            unsigned int j;

            for (j = stack_top; j < iso_run->length; ++j)
            {
                WCHAR c = iso_run->item[i].ch;

                if (c == 0x232a)
                    c = 0x3009;

                if (c != open_stack[j])
                    continue;

                if (!(FUNC5((void **)&out, &out_size, pair_count + 2, sizeof(*out))))
                    FUNC0("Failed to grow output array.\n");

                out[pair_count].start = stack_index[j];
                out[pair_count].end = i;
                ++pair_count;

                out[pair_count].start = -1;
                stack_top = j + 1;
                break;
            }
        }
    }

    FUNC3(open_stack);
    FUNC3(stack_index);

    if (!pair_count)
        return NULL;

    FUNC4(out, pair_count, sizeof(*out), compr);

    return out;
}