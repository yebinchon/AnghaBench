
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (char*) ;
 size_t strnlen (char*,size_t) ;

char* strshorten(char *s, size_t l) {
        assert(s);

        if (strnlen(s, l+1) > l)
                s[l] = 0;

        return s;
}
