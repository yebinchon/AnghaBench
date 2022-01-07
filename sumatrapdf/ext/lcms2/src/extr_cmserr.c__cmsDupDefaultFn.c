
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt32Number ;
typedef int cmsContext ;


 int MAX_MEMORY_FOR_ALLOC ;
 void* _cmsMalloc (int ,int ) ;
 int memmove (void*,void const*,int ) ;

__attribute__((used)) static
void* _cmsDupDefaultFn(cmsContext ContextID, const void* Org, cmsUInt32Number size)
{
    void* mem;

    if (size > MAX_MEMORY_FOR_ALLOC) return ((void*)0);

    mem = _cmsMalloc(ContextID, size);

    if (mem != ((void*)0) && Org != ((void*)0))
        memmove(mem, Org, size);

    return mem;
}
