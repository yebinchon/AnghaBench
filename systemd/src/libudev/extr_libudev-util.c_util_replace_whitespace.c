
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WHITESPACE ;
 int assert (char const*) ;
 scalar_t__ isspace (char const) ;
 size_t strspn (char const*,int ) ;

size_t util_replace_whitespace(const char *str, char *to, size_t len) {
        bool is_space = 0;
        size_t i, j;

        assert(str);
        assert(to);

        i = strspn(str, WHITESPACE);

        for (j = 0; j < len && i < len && str[i] != '\0'; i++) {
                if (isspace(str[i])) {
                        is_space = 1;
                        continue;
                }

                if (is_space) {
                        if (j + 1 >= len)
                                break;

                        to[j++] = '_';
                        is_space = 0;
                }
                to[j++] = str[i];
        }

        to[j] = '\0';
        return j;
}
