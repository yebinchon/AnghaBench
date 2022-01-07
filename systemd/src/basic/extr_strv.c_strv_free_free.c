
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char*** mfree (char***) ;
 int strv_free (char**) ;

char ***strv_free_free(char ***l) {
        char ***i;

        if (!l)
                return ((void*)0);

        for (i = l; *i; i++)
                strv_free(*i);

        return mfree(l);
}
