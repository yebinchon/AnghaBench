
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char) ;

__attribute__((used)) static char *skip_white(char *s)
{
    while (*s) {
        if (*s == '\n' || *s == '\r') {
            return ((void*)0);
        }
        if (isspace(*s)) {
            ++s;
            continue;
        }
        return s;
    }
    return ((void*)0);
}
