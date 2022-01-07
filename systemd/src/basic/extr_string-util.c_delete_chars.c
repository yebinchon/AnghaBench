
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* WHITESPACE ;
 scalar_t__ strchr (char const*,char) ;

char *delete_chars(char *s, const char *bad) {
        char *f, *t;



        if (!s)
                return ((void*)0);

        if (!bad)
                bad = WHITESPACE;

        for (f = s, t = s; *f; f++) {
                if (strchr(bad, *f))
                        continue;

                *(t++) = *f;
        }

        *t = 0;

        return s;
}
