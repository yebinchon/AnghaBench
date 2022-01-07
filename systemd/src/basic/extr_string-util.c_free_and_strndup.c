
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int assert (char**) ;
 int free_and_replace (char*,char*) ;
 size_t strlen (char*) ;
 char* strndup (char const*,size_t) ;
 scalar_t__ strneq (char*,char const*,size_t) ;

int free_and_strndup(char **p, const char *s, size_t l) {
        char *t;

        assert(p);
        assert(s || l == 0);




        if (!*p && !s)
                return 0;

        if (*p && s && strneq(*p, s, l) && (l > strlen(*p) || (*p)[l] == '\0'))
                return 0;

        if (s) {
                t = strndup(s, l);
                if (!t)
                        return -ENOMEM;
        } else
                t = ((void*)0);

        free_and_replace(*p, t);
        return 1;
}
