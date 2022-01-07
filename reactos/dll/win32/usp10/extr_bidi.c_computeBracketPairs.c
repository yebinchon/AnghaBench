
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_9__ {int start; int end; } ;
struct TYPE_8__ {int length; TYPE_1__* item; } ;
struct TYPE_7__ {int ch; } ;
typedef int SIZE_T ;
typedef TYPE_2__ IsolatedRun ;
typedef TYPE_3__ BracketPair ;


 int ERR (char*) ;
 int bidi_bracket_table ;
 int compr ;
 unsigned short get_table_entry (int ,int) ;
 int* heap_alloc (int) ;
 int heap_free (int*) ;
 int qsort (TYPE_3__*,unsigned int,int,int ) ;
 int usp10_array_reserve (void**,int *,unsigned int,int) ;

__attribute__((used)) static BracketPair *computeBracketPairs(IsolatedRun *iso_run)
{
    WCHAR *open_stack;
    int *stack_index;
    int stack_top = iso_run->length;
    unsigned int pair_count = 0;
    BracketPair *out = ((void*)0);
    SIZE_T out_size = 0;
    int i;

    open_stack = heap_alloc(iso_run->length * sizeof(*open_stack));
    stack_index = heap_alloc(iso_run->length * sizeof(*stack_index));

    for (i = 0; i < iso_run->length; i++)
    {
        unsigned short ubv = get_table_entry(bidi_bracket_table, iso_run->item[i].ch);

        if (!ubv)
            continue;

        if ((ubv >> 8) == 0)
        {
            --stack_top;
            open_stack[stack_top] = iso_run->item[i].ch + (signed char)(ubv & 0xff);

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

                if (!(usp10_array_reserve((void **)&out, &out_size, pair_count + 2, sizeof(*out))))
                    ERR("Failed to grow output array.\n");

                out[pair_count].start = stack_index[j];
                out[pair_count].end = i;
                ++pair_count;

                out[pair_count].start = -1;
                stack_top = j + 1;
                break;
            }
        }
    }

    heap_free(open_stack);
    heap_free(stack_index);

    if (!pair_count)
        return ((void*)0);

    qsort(out, pair_count, sizeof(*out), compr);

    return out;
}
