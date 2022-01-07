
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** strv_split_full (char const*,char const*,int ) ;

__attribute__((used)) static inline char **strv_split(const char *s, const char *separator) {
        return strv_split_full(s, separator, 0);
}
