
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int parse_boolean (char const*) ;
 scalar_t__ safe_atoi (char const*,int*) ;

int parse_crash_chvt(const char *value, int *data) {
        int b;

        if (safe_atoi(value, data) >= 0)
                return 0;

        b = parse_boolean(value);
        if (b < 0)
                return b;

        if (b > 0)
                *data = 0;
        else
                *data = -1;

        return 0;
}
