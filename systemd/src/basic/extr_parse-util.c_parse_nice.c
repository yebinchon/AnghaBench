
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERANGE ;
 int nice_is_valid (int) ;
 int safe_atoi (char const*,int*) ;

int parse_nice(const char *p, int *ret) {
        int n, r;

        r = safe_atoi(p, &n);
        if (r < 0)
                return r;

        if (!nice_is_valid(n))
                return -ERANGE;

        *ret = n;
        return 0;
}
