
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* utf8_escape_non_printable_full (char const*,size_t) ;

__attribute__((used)) static inline char *utf8_escape_non_printable(const char *str) {
        return utf8_escape_non_printable_full(str, (size_t) -1);
}
