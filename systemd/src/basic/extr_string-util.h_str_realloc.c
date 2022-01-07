
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* realloc (char*,scalar_t__) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static inline char* str_realloc(char **p) {


        if (!*p)
                return ((void*)0);

        char *t = realloc(*p, strlen(*p) + 1);
        if (!t)
                return ((void*)0);

        return (*p = t);
}
