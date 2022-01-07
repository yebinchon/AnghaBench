
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char*) ;
 int isdigit (char) ;
 char* skip_white (char*) ;

__attribute__((used)) static char *skip_int(char *start, int *out_n)
{
    char *s;
    char c;

    *out_n = 0;
    s = start;

    s = skip_white(start);
    if (s == ((void*)0)) {
        return ((void*)0);
    }
    start = s;

    while (*s) {
        if (!isdigit(*s)) {
            break;
        }
        ++s;
    }
    c = *s;
    *s = 0;
    *out_n = atoi(start);
    *s = c;
    return s;
}
