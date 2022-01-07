
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERANGE ;
 int parse_permille_unbounded (char const*) ;

int parse_permille(const char *p) {
        int v;

        v = parse_permille_unbounded(p);
        if (v > 1000)
                return -ERANGE;

        return v;
}
