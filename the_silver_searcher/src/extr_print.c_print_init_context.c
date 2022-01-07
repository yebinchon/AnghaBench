
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ before; } ;
struct TYPE_3__ {int line; void* printing_a_match; void* in_a_match; scalar_t__ last_printed_match; int lines_since_last_match; scalar_t__ line_preceding_current_match_offset; scalar_t__ prev_line_offset; scalar_t__ last_prev_line; scalar_t__ prev_line; int * context_prev_lines; } ;


 void* FALSE ;
 int INT_MAX ;
 int * ag_calloc (int,scalar_t__) ;
 TYPE_2__ opts ;
 TYPE_1__ print_context ;

void print_init_context(void) {
    if (print_context.context_prev_lines != ((void*)0)) {
        return;
    }
    print_context.context_prev_lines = ag_calloc(sizeof(char *), (opts.before + 1));
    print_context.line = 1;
    print_context.prev_line = 0;
    print_context.last_prev_line = 0;
    print_context.prev_line_offset = 0;
    print_context.line_preceding_current_match_offset = 0;
    print_context.lines_since_last_match = INT_MAX;
    print_context.last_printed_match = 0;
    print_context.in_a_match = FALSE;
    print_context.printing_a_match = FALSE;
}
