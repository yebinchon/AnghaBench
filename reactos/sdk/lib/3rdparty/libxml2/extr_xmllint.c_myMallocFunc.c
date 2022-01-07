
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OOM () ;
 scalar_t__ maxmem ;
 int xmlMemFree (void*) ;
 void* xmlMemMalloc (size_t) ;
 scalar_t__ xmlMemUsed () ;

__attribute__((used)) static void *
myMallocFunc(size_t size)
{
    void *ret;

    ret = xmlMemMalloc(size);
    if (ret != ((void*)0)) {
        if (xmlMemUsed() > maxmem) {
            OOM();
            xmlMemFree(ret);
            return (((void*)0));
        }
    }
    return (ret);
}
