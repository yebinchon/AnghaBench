
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int ignores ;
typedef int FILE ;


 int add_ignore_pattern (int *,char*) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int free (char*) ;
 int getline (char**,size_t*,int *) ;
 int log_debug (char*,char const*) ;

void load_ignore_patterns(ignores *ig, const char *path) {
    FILE *fp = ((void*)0);
    fp = fopen(path, "r");
    if (fp == ((void*)0)) {
        log_debug("Skipping ignore file %s: not readable", path);
        return;
    }
    log_debug("Loading ignore file %s.", path);

    char *line = ((void*)0);
    ssize_t line_len = 0;
    size_t line_cap = 0;

    while ((line_len = getline(&line, &line_cap, fp)) > 0) {
        if (line_len == 0 || line[0] == '\n' || line[0] == '#') {
            continue;
        }
        if (line[line_len - 1] == '\n') {
            line[line_len - 1] = '\0';
        }
        add_ignore_pattern(ig, line);
    }

    free(line);
    fclose(fp);
}
