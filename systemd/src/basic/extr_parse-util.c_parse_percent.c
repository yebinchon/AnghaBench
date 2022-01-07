
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERANGE ;
 int parse_percent_unbounded (char const*) ;

int parse_percent(const char *p) {
        int v;

        v = parse_percent_unbounded(p);
        if (v > 100)
                return -ERANGE;

        return v;
}
