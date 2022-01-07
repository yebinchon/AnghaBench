
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (char const*) ;
 int strlen (char const*) ;
 size_t strnscpy (char*,size_t,char const*,int ) ;

size_t strscpy(char *dest, size_t size, const char *src) {
        assert(dest);
        assert(src);

        return strnscpy(dest, size, src, strlen(src));
}
