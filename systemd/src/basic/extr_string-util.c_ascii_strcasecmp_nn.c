
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMP (size_t,size_t) ;
 int MIN (size_t,size_t) ;
 int ascii_strcasecmp_n (char const*,char const*,int ) ;

int ascii_strcasecmp_nn(const char *a, size_t n, const char *b, size_t m) {
        int r;

        r = ascii_strcasecmp_n(a, b, MIN(n, m));
        if (r != 0)
                return r;

        return CMP(n, m);
}
