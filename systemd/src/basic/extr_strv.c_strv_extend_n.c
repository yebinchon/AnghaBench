
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int assert (char***) ;
 int free (char*) ;
 char** reallocarray (char**,size_t,int) ;
 char* strdup (char const*) ;
 size_t strv_length (char**) ;

int strv_extend_n(char ***l, const char *value, size_t n) {
        size_t i, j, k;
        char **nl;

        assert(l);

        if (!value)
                return 0;
        if (n == 0)
                return 0;



        k = strv_length(*l);

        nl = reallocarray(*l, k + n + 1, sizeof(char *));
        if (!nl)
                return -ENOMEM;

        *l = nl;

        for (i = k; i < k + n; i++) {
                nl[i] = strdup(value);
                if (!nl[i])
                        goto rollback;
        }

        nl[i] = ((void*)0);
        return 0;

rollback:
        for (j = k; j < i; j++)
                free(nl[j]);

        nl[k] = ((void*)0);
        return -ENOMEM;
}
