
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t ssize_t ;
struct TYPE_6__ {size_t start; size_t end; } ;
typedef TYPE_1__ match_t ;
struct TYPE_8__ {scalar_t__ after; size_t before; scalar_t__ print_path; char path_sep; char* color_match; scalar_t__ width; scalar_t__ stdout_inode; scalar_t__ search_stream; scalar_t__ color; scalar_t__ only_matching; scalar_t__ column; scalar_t__ vimgrep; scalar_t__ ackmate; scalar_t__ print_count; scalar_t__ context; } ;
struct TYPE_7__ {scalar_t__ lines_since_last_match; size_t prev_line; size_t last_prev_line; char** context_prev_lines; size_t line; size_t prev_line_offset; size_t last_printed_match; size_t line_preceding_current_match_offset; void* in_a_match; void* printing_a_match; } ;


 void* FALSE ;
 scalar_t__ PATH_PRINT_DEFAULT ;
 scalar_t__ PATH_PRINT_DEFAULT_EACH_LINE ;
 scalar_t__ PATH_PRINT_EACH_LINE ;
 scalar_t__ PATH_PRINT_TOP ;
 void* TRUE ;
 char* color_reset ;
 int fflush (int ) ;
 int fprintf (int ,char*,...) ;
 int fputc (char const,int ) ;
 int fputs (int ,int ) ;
 TYPE_5__ opts ;
 int out_fd ;
 int print_column_number (TYPE_1__ const*,size_t,size_t,char) ;
 TYPE_3__ print_context ;
 int print_context_append (char const*,size_t) ;
 int print_file_separator () ;
 int print_line (char const*,size_t,size_t) ;
 int print_line_number (size_t,char) ;
 int print_path (char const*,char) ;
 int print_path_count (char const*,char,size_t const) ;
 int print_trailing_context (char const*,char const*,size_t) ;
 int truncate_marker ;

void print_file_matches(const char *path, const char *buf, const size_t buf_len, const match_t matches[], const size_t matches_len) {
    size_t cur_match = 0;
    ssize_t lines_to_print = 0;
    char sep = '-';
    size_t i, j;
    int blanks_between_matches = opts.context || opts.after || opts.before;

    if (opts.ackmate || opts.vimgrep) {
        sep = ':';
    }

    print_file_separator();

    if (opts.print_path == PATH_PRINT_DEFAULT) {
        opts.print_path = PATH_PRINT_TOP;
    } else if (opts.print_path == PATH_PRINT_DEFAULT_EACH_LINE) {
        opts.print_path = PATH_PRINT_EACH_LINE;
    }

    if (opts.print_path == PATH_PRINT_TOP) {
        if (opts.print_count) {
            print_path_count(path, opts.path_sep, matches_len);
        } else {
            print_path(path, opts.path_sep);
        }
    }

    for (i = 0; i <= buf_len && (cur_match < matches_len || print_context.lines_since_last_match <= opts.after); i++) {
        if (cur_match < matches_len && i == matches[cur_match].start) {
            print_context.in_a_match = TRUE;

            if (cur_match > 0 && blanks_between_matches && print_context.lines_since_last_match > (opts.before + opts.after + 1)) {
                fprintf(out_fd, "--\n");
            }

            if (print_context.lines_since_last_match > 0 && opts.before > 0) {


                lines_to_print = print_context.lines_since_last_match - (opts.after + 1);
                if (lines_to_print < 0) {
                    lines_to_print = 0;
                } else if ((size_t)lines_to_print > opts.before) {
                    lines_to_print = opts.before;
                }

                for (j = (opts.before - lines_to_print); j < opts.before; j++) {
                    print_context.prev_line = (print_context.last_prev_line + j) % opts.before;
                    if (print_context.context_prev_lines[print_context.prev_line] != ((void*)0)) {
                        if (opts.print_path == PATH_PRINT_EACH_LINE) {
                            print_path(path, ':');
                        }
                        print_line_number(print_context.line - (opts.before - j), sep);
                        fprintf(out_fd, "%s\n", print_context.context_prev_lines[print_context.prev_line]);
                    }
                }
            }
            print_context.lines_since_last_match = 0;
        }

        if (cur_match < matches_len && i == matches[cur_match].end) {

            cur_match++;
            print_context.in_a_match = FALSE;
        }


        if ((i == buf_len || buf[i] == '\n') && opts.before > 0) {

            print_context_append(&buf[print_context.prev_line_offset], i - print_context.prev_line_offset);
        }

        if (i == buf_len || buf[i] == '\n') {
            if (print_context.lines_since_last_match == 0) {
                if (opts.print_path == PATH_PRINT_EACH_LINE && !opts.search_stream) {
                    print_path(path, ':');
                }
                if (opts.ackmate) {

                    print_line_number(print_context.line, ';');
                    for (; print_context.last_printed_match < cur_match; print_context.last_printed_match++) {
                        size_t start = matches[print_context.last_printed_match].start - print_context.line_preceding_current_match_offset;
                        fprintf(out_fd, "%lu %lu",
                                start,
                                matches[print_context.last_printed_match].end - matches[print_context.last_printed_match].start);
                        print_context.last_printed_match == cur_match - 1 ? fputc(':', out_fd) : fputc(',', out_fd);
                    }
                    print_line(buf, i, print_context.prev_line_offset);
                } else if (opts.vimgrep) {
                    for (; print_context.last_printed_match < cur_match; print_context.last_printed_match++) {
                        print_path(path, sep);
                        print_line_number(print_context.line, sep);
                        print_column_number(matches, print_context.last_printed_match, print_context.prev_line_offset, sep);
                        print_line(buf, i, print_context.prev_line_offset);
                    }
                } else {
                    print_line_number(print_context.line, ':');
                    int printed_match = FALSE;
                    if (opts.column) {
                        print_column_number(matches, print_context.last_printed_match, print_context.prev_line_offset, ':');
                    }

                    if (print_context.printing_a_match && opts.color) {
                        fprintf(out_fd, "%s", opts.color_match);
                    }
                    for (j = print_context.prev_line_offset; j <= i; j++) {

                        if (print_context.last_printed_match < matches_len && j == matches[print_context.last_printed_match].end) {
                            if (opts.color) {
                                fprintf(out_fd, "%s", color_reset);
                            }
                            print_context.printing_a_match = FALSE;
                            print_context.last_printed_match++;
                            printed_match = TRUE;
                            if (opts.only_matching) {
                                fputc('\n', out_fd);
                            }
                        }


                        if (j < buf_len && opts.width > 0 && j - print_context.prev_line_offset >= opts.width) {
                            if (j < i) {
                                fputs(truncate_marker, out_fd);
                            }
                            fputc('\n', out_fd);


                            j = i;
                            print_context.last_printed_match = matches_len;
                        }

                        if (print_context.last_printed_match < matches_len && j == matches[print_context.last_printed_match].start) {
                            if (opts.only_matching && printed_match) {
                                if (opts.print_path == PATH_PRINT_EACH_LINE) {
                                    print_path(path, ':');
                                }
                                print_line_number(print_context.line, ':');
                                if (opts.column) {
                                    print_column_number(matches, print_context.last_printed_match, print_context.prev_line_offset, ':');
                                }
                            }
                            if (opts.color) {
                                fprintf(out_fd, "%s", opts.color_match);
                            }
                            print_context.printing_a_match = TRUE;
                        }

                        if (j < buf_len) {

                            if (!opts.only_matching || print_context.printing_a_match) {
                                if (opts.width == 0 || j - print_context.prev_line_offset < opts.width) {
                                    fputc(buf[j], out_fd);
                                }
                            }
                        }
                    }
                    if (print_context.printing_a_match && opts.color) {
                        fprintf(out_fd, "%s", color_reset);
                    }
                }
            }

            if (opts.search_stream) {
                print_context.last_printed_match = 0;
                break;
            }


            print_trailing_context(path, &buf[print_context.prev_line_offset], i - print_context.prev_line_offset);

            print_context.prev_line_offset = i + 1;
            if (!print_context.in_a_match) {
                print_context.line_preceding_current_match_offset = i + 1;
            }


            if (i == buf_len && buf[i - 1] != '\n') {
                fputc('\n', out_fd);
            }
        }
    }

    if (opts.stdout_inode) {
        fflush(out_fd);
    }
}
