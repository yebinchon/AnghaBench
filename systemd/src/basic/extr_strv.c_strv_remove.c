
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (char const*) ;
 int free (char*) ;
 scalar_t__ streq (char*,char const*) ;

char **strv_remove(char **l, const char *s) {
        char **f, **t;

        if (!l)
                return ((void*)0);

        assert(s);




        for (f = t = l; *f; f++)
                if (streq(*f, s))
                        free(*f);
                else
                        *(t++) = *f;

        *t = ((void*)0);
        return l;
}
