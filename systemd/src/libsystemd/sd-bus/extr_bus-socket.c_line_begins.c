
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* memory_startswith (char const*,size_t,char const*) ;

__attribute__((used)) static bool line_begins(const char *s, size_t m, const char *word) {
        const char *p;

        p = memory_startswith(s, m, word);
        return p && (p == (s + m) || *p == ' ');
}
