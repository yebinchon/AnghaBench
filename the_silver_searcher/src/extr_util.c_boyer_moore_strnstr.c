
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;


 scalar_t__ ag_max (size_t const,size_t const) ;
 char const tolower (char const) ;

const char *boyer_moore_strnstr(const char *s, const char *find, const size_t s_len, const size_t f_len,
                                const size_t alpha_skip_lookup[], const size_t *find_skip_lookup, const int case_insensitive) {
    ssize_t i;
    size_t pos = f_len - 1;

    while (pos < s_len) {
        for (i = f_len - 1; i >= 0 && (case_insensitive ? tolower(s[pos]) : s[pos]) == find[i]; pos--, i--) {
        }
        if (i < 0) {
            return s + pos + 1;
        }
        pos += ag_max(alpha_skip_lookup[(unsigned char)s[pos]], find_skip_lookup[i]);
    }

    return ((void*)0);
}
