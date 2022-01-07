
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int error (char*) ;
 void* realloc (void*,size_t) ;

void *xrealloc(void *p, size_t size)
{
    void *res;

    assert(size > 0);
    res = realloc(p, size);
    if(res == ((void*)0))
    {
 error("Virtual memory exhausted.\n");
    }
    return res;
}
