
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ memcmp (char const*,char const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static bool line_equals(const char *s, size_t m, const char *line) {
        size_t l;

        l = strlen(line);
        if (l != m)
                return 0;

        return memcmp(s, line, l) == 0;
}
