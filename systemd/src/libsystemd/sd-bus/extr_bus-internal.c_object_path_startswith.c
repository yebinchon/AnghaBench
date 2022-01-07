
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int object_path_is_valid (char const*) ;
 char* startswith (char const*,char const*) ;
 scalar_t__ streq (char const*,char*) ;

char* object_path_startswith(const char *a, const char *b) {
        const char *p;

        if (!object_path_is_valid(a) ||
            !object_path_is_valid(b))
                return ((void*)0);

        if (streq(b, "/"))
                return (char*) a + 1;

        p = startswith(a, b);
        if (!p)
                return ((void*)0);

        if (*p == 0)
                return (char*) p;

        if (*p == '/')
                return (char*) p + 1;

        return ((void*)0);
}
