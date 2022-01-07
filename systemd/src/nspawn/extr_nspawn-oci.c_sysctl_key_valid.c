
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isempty (char const*) ;

__attribute__((used)) static bool sysctl_key_valid(const char *s) {
        bool dot = 1;




        if (isempty(s))
                return 0;

        for (; *s; s++) {

                if (*s <= ' ' || *s >= 127)
                        return 0;
                if (*s == '/')
                        return 0;
                if (*s == '.') {

                        if (dot)
                                return 0;

                        dot = 1;
                } else
                        dot = 0;
        }

        if (dot)
                return 0;

        return 1;
}
