
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int assert (char***) ;
 int free (char*) ;
 int memmove (char**,char**,size_t) ;
 char** reallocarray (char**,size_t,int) ;
 char* strdup (char const*) ;
 size_t strv_length (char**) ;

int strv_extend_front(char ***l, const char *value) {
        size_t n, m;
        char *v, **c;

        assert(l);



        if (!value)
                return 0;

        n = strv_length(*l);


        m = n + 2;
        if (m < n)
                return -ENOMEM;

        v = strdup(value);
        if (!v)
                return -ENOMEM;

        c = reallocarray(*l, m, sizeof(char*));
        if (!c) {
                free(v);
                return -ENOMEM;
        }

        memmove(c+1, c, n * sizeof(char*));
        c[0] = v;
        c[n+1] = ((void*)0);

        *l = c;
        return 0;
}
