
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt32Number ;
typedef int cmsContext ;


 int MAX_MEMORY_FOR_ALLOC ;
 int UINT_MAX ;
 void* _cmsMallocZero (int ,int) ;

__attribute__((used)) static
void* _cmsCallocDefaultFn(cmsContext ContextID, cmsUInt32Number num, cmsUInt32Number size)
{
    cmsUInt32Number Total = num * size;


    if (Total == 0) return ((void*)0);


    if (num >= UINT_MAX / size) return ((void*)0);


    if (Total < num || Total < size) {
        return ((void*)0);
    }

    if (Total > MAX_MEMORY_FOR_ALLOC) return ((void*)0);

    return _cmsMallocZero(ContextID, Total);
}
