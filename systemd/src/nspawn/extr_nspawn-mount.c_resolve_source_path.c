
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* path_join (char const*,char const*) ;
 char* strdup (char const*) ;

__attribute__((used)) static char *resolve_source_path(const char *dest, const char *source) {

        if (!source)
                return ((void*)0);

        if (source[0] == '+')
                return path_join(dest, source + 1);

        return strdup(source);
}
