
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strchr (char const*,char const) ;

__attribute__((used)) static size_t strcspn_escaped(const char *s, const char *reject) {
        bool escaped = 0;
        int n;

        for (n=0; s[n]; n++) {
                if (escaped)
                        escaped = 0;
                else if (s[n] == '\\')
                        escaped = 1;
                else if (strchr(reject, s[n]))
                        break;
        }


        return n - escaped;
}
