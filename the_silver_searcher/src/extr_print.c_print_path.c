
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ print_path; char* color_path; scalar_t__ color; scalar_t__ vimgrep; scalar_t__ ackmate; } ;


 scalar_t__ PATH_PRINT_NOTHING ;
 int color_reset ;
 int fprintf (int ,char*,char const*,...) ;
 char* normalize_path (char const*) ;
 TYPE_1__ opts ;
 int out_fd ;

void print_path(const char *path, const char sep) {
    if (opts.print_path == PATH_PRINT_NOTHING && !opts.vimgrep) {
        return;
    }
    path = normalize_path(path);

    if (opts.ackmate) {
        fprintf(out_fd, ":%s%c", path, sep);
    } else if (opts.vimgrep) {
        fprintf(out_fd, "%s%c", path, sep);
    } else {
        if (opts.color) {
            fprintf(out_fd, "%s%s%s%c", opts.color_path, path, color_reset, sep);
        } else {
            fprintf(out_fd, "%s%c", path, sep);
        }
    }
}
