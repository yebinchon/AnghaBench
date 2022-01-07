
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool simple_pattern_check(char c, const char *a, const char *b) {
        bool separator = 0;

        if (!a && !b)
                return 1;

        if (!a || !b)
                return 0;

        for (;;) {
                if (*a != *b)
                        return *a == 0 && (*b == c || separator);

                if (*a == 0)
                        return 1;

                separator = *a == c;

                a++, b++;
        }
}
