
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (char const*) ;

char *cg_unescape(const char *p) {
        assert(p);




        if (p[0] == '_')
                return (char*) p+1;

        return (char*) p;
}
