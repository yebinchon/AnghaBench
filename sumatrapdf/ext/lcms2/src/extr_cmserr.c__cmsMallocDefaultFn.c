
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ cmsUInt32Number ;
typedef int cmsContext ;


 scalar_t__ MAX_MEMORY_FOR_ALLOC ;
 int cmsUNUSED_PARAMETER (int ) ;
 scalar_t__ malloc (scalar_t__) ;

__attribute__((used)) static
void* _cmsMallocDefaultFn(cmsContext ContextID, cmsUInt32Number size)
{
    if (size > MAX_MEMORY_FOR_ALLOC) return ((void*)0);

    return (void*) malloc(size);

    cmsUNUSED_PARAMETER(ContextID);
}
