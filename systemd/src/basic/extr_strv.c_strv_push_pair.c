
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 char** reallocarray (char**,size_t,int) ;
 size_t strv_length (char**) ;

int strv_push_pair(char ***l, char *a, char *b) {
        char **c;
        size_t n, m;

        if (!a && !b)
                return 0;

        n = strv_length(*l);


        m = n + !!a + !!b + 1;
        if (m < n)
                return -ENOMEM;

        c = reallocarray(*l, m, sizeof(char*));
        if (!c)
                return -ENOMEM;

        if (a)
                c[n++] = a;
        if (b)
                c[n++] = b;
        c[n] = ((void*)0);

        *l = c;
        return 0;
}
