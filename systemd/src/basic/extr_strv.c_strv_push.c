
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 char** reallocarray (char**,size_t,int) ;
 size_t strv_length (char**) ;

int strv_push(char ***l, char *value) {
        char **c;
        size_t n, m;

        if (!value)
                return 0;

        n = strv_length(*l);


        m = n + 2;
        if (m < n)
                return -ENOMEM;

        c = reallocarray(*l, m, sizeof(char*));
        if (!c)
                return -ENOMEM;

        c[n] = value;
        c[n+1] = ((void*)0);

        *l = c;
        return 0;
}
