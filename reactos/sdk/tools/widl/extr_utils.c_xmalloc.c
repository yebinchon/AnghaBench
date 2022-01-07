
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int error (char*) ;
 void* malloc (size_t) ;
 int memset (void*,int,size_t) ;

void *xmalloc(size_t size)
{
    void *res;

    assert(size > 0);
    res = malloc(size);
    if(res == ((void*)0))
    {
 error("Virtual memory exhausted.\n");
    }
    memset(res, 0x55, size);
    return res;
}
