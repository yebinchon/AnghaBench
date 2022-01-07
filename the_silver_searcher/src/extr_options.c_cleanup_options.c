
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ file_search_regex_extra; scalar_t__ file_search_regex; scalar_t__ ackmate_dir_filter_extra; scalar_t__ ackmate_dir_filter; scalar_t__ re_extra; scalar_t__ re; scalar_t__ query; scalar_t__ color_line_number; scalar_t__ color_match; scalar_t__ color_path; } ;


 int free (scalar_t__) ;
 TYPE_1__ opts ;
 int pcre_free (scalar_t__) ;

void cleanup_options(void) {
    free(opts.color_path);
    free(opts.color_match);
    free(opts.color_line_number);

    if (opts.query) {
        free(opts.query);
    }

    pcre_free(opts.re);
    if (opts.re_extra) {

        pcre_free(opts.re_extra);
    }

    if (opts.ackmate_dir_filter) {
        pcre_free(opts.ackmate_dir_filter);
    }
    if (opts.ackmate_dir_filter_extra) {
        pcre_free(opts.ackmate_dir_filter_extra);
    }

    if (opts.file_search_regex) {
        pcre_free(opts.file_search_regex);
    }
    if (opts.file_search_regex_extra) {
        pcre_free(opts.file_search_regex_extra);
    }
}
