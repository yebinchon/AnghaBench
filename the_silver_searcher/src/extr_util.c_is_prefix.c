
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ tolower (char const) ;

int is_prefix(const char *s, const size_t s_len, const size_t pos, const int case_sensitive) {
    size_t i;

    for (i = 0; pos + i < s_len; i++) {
        if (case_sensitive) {
            if (s[i] != s[i + pos]) {
                return 0;
            }
        } else {
            if (tolower(s[i]) != tolower(s[i + pos])) {
                return 0;
            }
        }
    }

    return 1;
}
