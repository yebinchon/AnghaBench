
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int assert (char**) ;
 int free (char*) ;
 char* strdup (char const*) ;
 scalar_t__ streq_ptr (char*,char const*) ;

int free_and_strdup(char **p, const char *s) {
        char *t;

        assert(p);




        if (streq_ptr(*p, s))
                return 0;

        if (s) {
                t = strdup(s);
                if (!t)
                        return -ENOMEM;
        } else
                t = ((void*)0);

        free(*p);
        *p = t;

        return 1;
}
