
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalpha (char) ;
 char* skip_white (char*) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static char *skip_idf(char *start, char out_idf[256])
{
    char *s;
    char c;

    s = skip_white(start);
    if (s == ((void*)0)) {
        return ((void*)0);
    }
    start = s;

    while (*s) {
        if (isalpha(*s) || *s == '_') {
            ++s;
            continue;
        }
        break;
    }
    c = *s;
    *s = 0;
    strncpy(out_idf, start, 255);
    *s = c;
    return s;
}
