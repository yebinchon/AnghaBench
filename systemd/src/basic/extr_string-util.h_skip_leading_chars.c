
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* WHITESPACE ;
 int strspn (char const*,char const*) ;

__attribute__((used)) static inline char *skip_leading_chars(const char *s, const char *bad) {

        if (!s)
                return ((void*)0);

        if (!bad)
                bad = WHITESPACE;

        return (char*) s + strspn(s, bad);
}
