
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strv_join_prefix (char**,char const*,int *) ;

__attribute__((used)) static inline char *strv_join(char **l, const char *separator) {
        return strv_join_prefix(l, separator, ((void*)0));
}
