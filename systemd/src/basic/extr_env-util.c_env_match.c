
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (char const*) ;
 int strchr (char const*,char) ;
 scalar_t__ streq (char const*,char const*) ;
 size_t strlen (char const*) ;
 scalar_t__ strneq (char const*,char const*,size_t) ;

__attribute__((used)) static bool env_match(const char *t, const char *pattern) {
        assert(t);
        assert(pattern);
        if (streq(t, pattern))
                return 1;

        if (!strchr(pattern, '=')) {
                size_t l = strlen(pattern);

                return strneq(t, pattern, l) && t[l] == '=';
        }

        return 0;
}
