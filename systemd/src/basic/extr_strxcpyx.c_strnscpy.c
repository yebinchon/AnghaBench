
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (char const*) ;
 size_t strnpcpy (char**,size_t,char const*,size_t) ;

size_t strnscpy(char *dest, size_t size, const char *src, size_t len) {
        char *s;

        assert(dest);
        assert(src);

        s = dest;
        return strnpcpy(&s, size, src, len);
}
