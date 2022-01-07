
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int before; } ;
struct TYPE_3__ {size_t last_prev_line; int ** context_prev_lines; } ;


 int * ag_strndup (char const*,size_t) ;
 int free (int *) ;
 TYPE_2__ opts ;
 TYPE_1__ print_context ;

void print_context_append(const char *line, size_t len) {
    if (opts.before == 0) {
        return;
    }
    if (print_context.context_prev_lines[print_context.last_prev_line] != ((void*)0)) {
        free(print_context.context_prev_lines[print_context.last_prev_line]);
    }
    print_context.context_prev_lines[print_context.last_prev_line] = ag_strndup(line, len);
    print_context.last_prev_line = (print_context.last_prev_line + 1) % opts.before;
}
