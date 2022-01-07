
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int fgetc (int ) ;
 int free (char*) ;
 char* realloc (char*,size_t) ;
 int stdin ;

__attribute__((used)) static char *linenoiseNoTTY(void) {
    char *line = ((void*)0);
    size_t len = 0, maxlen = 0;

    while(1) {
        if (len == maxlen) {
            if (maxlen == 0) maxlen = 16;
            maxlen *= 2;
            char *oldval = line;
            line = realloc(line,maxlen);
            if (line == ((void*)0)) {
                if (oldval) free(oldval);
                return ((void*)0);
            }
        }
        int c = fgetc(stdin);
        if (c == EOF || c == '\n') {
            if (c == EOF && len == 0) {
                free(line);
                return ((void*)0);
            } else {
                line[len] = '\0';
                return line;
            }
        } else {
            line[len] = c;
            len++;
        }
    }
}
