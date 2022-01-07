
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ after; scalar_t__ print_path; scalar_t__ vimgrep; scalar_t__ ackmate; } ;
struct TYPE_3__ {scalar_t__ lines_since_last_match; int in_a_match; int line; } ;


 scalar_t__ INT_MAX ;
 scalar_t__ PATH_PRINT_EACH_LINE ;
 int fputc (char,int ) ;
 int fwrite (char const*,int,size_t,int ) ;
 TYPE_2__ opts ;
 int out_fd ;
 TYPE_1__ print_context ;
 int print_line_number (int ,char) ;
 int print_path (char const*,char) ;

void print_trailing_context(const char *path, const char *buf, size_t n) {
    char sep = '-';

    if (opts.ackmate || opts.vimgrep) {
        sep = ':';
    }

    if (print_context.lines_since_last_match != 0 &&
        print_context.lines_since_last_match <= opts.after) {
        if (opts.print_path == PATH_PRINT_EACH_LINE) {
            print_path(path, ':');
        }
        print_line_number(print_context.line, sep);

        fwrite(buf, 1, n, out_fd);
        fputc('\n', out_fd);
    }

    print_context.line++;
    if (!print_context.in_a_match && print_context.lines_since_last_match < INT_MAX) {
        print_context.lines_since_last_match++;
    }
}
