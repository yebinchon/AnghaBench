
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ERANGE ;
 char* endswith (char const*,char*) ;
 int safe_atoi (char const*,int*) ;
 char* strndupa (char const*,int) ;

int parse_percent_unbounded(const char *p) {
        const char *pc, *n;
        int r, v;

        pc = endswith(p, "%");
        if (!pc)
                return -EINVAL;

        n = strndupa(p, pc - p);
        r = safe_atoi(n, &v);
        if (r < 0)
                return r;
        if (v < 0)
                return -ERANGE;

        return v;
}
