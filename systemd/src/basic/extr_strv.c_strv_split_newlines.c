
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NEWLINE ;
 int assert (char const*) ;
 scalar_t__ isempty (char*) ;
 char* mfree (char*) ;
 size_t strv_length (char**) ;
 char** strv_split (char const*,int ) ;

char **strv_split_newlines(const char *s) {
        char **l;
        size_t n;

        assert(s);




        l = strv_split(s, NEWLINE);
        if (!l)
                return ((void*)0);

        n = strv_length(l);
        if (n <= 0)
                return l;

        if (isempty(l[n - 1]))
                l[n - 1] = mfree(l[n - 1]);

        return l;
}
