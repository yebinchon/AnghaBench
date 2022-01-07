
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* WHITESPACE ;
 int strchr (char const*,char) ;

char *delete_trailing_chars(char *s, const char *bad) {
        char *p, *c = s;



        if (!s)
                return ((void*)0);

        if (!bad)
                bad = WHITESPACE;

        for (p = s; *p; p++)
                if (!strchr(bad, *p))
                        c = p + 1;

        *c = 0;

        return s;
}
