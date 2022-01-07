
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_2__ {size_t stream_line_num; } ;
typedef int FILE ;


 int free (char*) ;
 int getline (char**,size_t*,int *) ;
 TYPE_1__ opts ;
 int print_cleanup_context () ;
 int print_init_context () ;
 int print_trailing_context (char const*,char*,int) ;
 int search_buf (char*,int,char const*) ;

ssize_t search_stream(FILE *stream, const char *path) {
    char *line = ((void*)0);
    ssize_t matches_count = 0;
    ssize_t line_len = 0;
    size_t line_cap = 0;
    size_t i;

    print_init_context();

    for (i = 1; (line_len = getline(&line, &line_cap, stream)) > 0; i++) {
        ssize_t result;
        opts.stream_line_num = i;
        result = search_buf(line, line_len, path);
        if (result > 0) {
            if (matches_count == -1) {
                matches_count = 0;
            }
            matches_count += result;
        } else if (matches_count <= 0 && result == -1) {
            matches_count = -1;
        }
        if (line[line_len - 1] == '\n') {
            line_len--;
        }
        print_trailing_context(path, line, line_len);
    }

    free(line);
    print_cleanup_context();
    return matches_count;
}
