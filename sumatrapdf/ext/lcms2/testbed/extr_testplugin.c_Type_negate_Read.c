
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _cms_typehandler_struct {int dummy; } ;
typedef int cmsUInt32Number ;
typedef int cmsUInt16Number ;
typedef int cmsIOHANDLER ;
typedef int cmsContext ;


 void* StageAllocNegate (int ) ;
 int _cmsReadUInt16Number (int ,int *,int*) ;

__attribute__((used)) static
void *Type_negate_Read(cmsContext ContextID, struct _cms_typehandler_struct* self,
        cmsIOHANDLER* io,
                cmsUInt32Number* nItems,
                cmsUInt32Number SizeOfTag)
{
    cmsUInt16Number Chans;
    if (!_cmsReadUInt16Number(ContextID, io, &Chans)) return ((void*)0);
    if (Chans != 3) return ((void*)0);

    *nItems = 1;
    return StageAllocNegate(ContextID);
}
