
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (char const*) ;
 scalar_t__ isempty (char const*) ;
 scalar_t__ path_is_absolute (char const*) ;
 char* path_join (char const*,char const*) ;
 char* strdup (char const*) ;

char *path_make_absolute(const char *p, const char *prefix) {
        assert(p);




        if (path_is_absolute(p) || isempty(prefix))
                return strdup(p);

        return path_join(prefix, p);
}
