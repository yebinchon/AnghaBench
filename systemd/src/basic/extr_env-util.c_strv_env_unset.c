
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (char const*) ;
 scalar_t__ env_match (char*,char const*) ;
 int free (char*) ;

char **strv_env_unset(char **l, const char *p) {

        char **f, **t;

        if (!l)
                return ((void*)0);

        assert(p);




        for (f = t = l; *f; f++) {

                if (env_match(*f, p)) {
                        free(*f);
                        continue;
                }

                *(t++) = *f;
        }

        *t = ((void*)0);
        return l;
}
