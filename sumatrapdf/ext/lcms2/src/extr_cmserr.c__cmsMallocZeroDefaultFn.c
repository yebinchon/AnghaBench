
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt32Number ;
typedef int cmsContext ;


 void* _cmsMalloc (int ,int ) ;
 int memset (void*,int ,int ) ;

__attribute__((used)) static
void* _cmsMallocZeroDefaultFn(cmsContext ContextID, cmsUInt32Number size)
{
    void *pt = _cmsMalloc(ContextID, size);
    if (pt == ((void*)0)) return ((void*)0);

    memset(pt, 0, size);
    return pt;
}
