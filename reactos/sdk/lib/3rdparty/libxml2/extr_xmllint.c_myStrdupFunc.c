
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OOM () ;
 scalar_t__ maxmem ;
 int xmlFree (char*) ;
 scalar_t__ xmlMemUsed () ;
 char* xmlMemoryStrdup (char const*) ;

__attribute__((used)) static char *
myStrdupFunc(const char *str)
{
    char *ret;

    ret = xmlMemoryStrdup(str);
    if (ret != ((void*)0)) {
        if (xmlMemUsed() > maxmem) {
            OOM();
            xmlFree(ret);
            return (((void*)0));
        }
    }
    return (ret);
}
