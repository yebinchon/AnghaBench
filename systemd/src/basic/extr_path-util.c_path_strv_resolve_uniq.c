
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int path_strv_resolve (char**,char const*) ;
 scalar_t__ strv_isempty (char**) ;
 char** strv_uniq (char**) ;

char **path_strv_resolve_uniq(char **l, const char *root) {

        if (strv_isempty(l))
                return l;

        if (!path_strv_resolve(l, root))
                return ((void*)0);

        return strv_uniq(l);
}
