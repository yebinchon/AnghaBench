
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef int cmsUInt8Number ;
typedef size_t cmsUInt32Number ;
struct TYPE_5__ {int (* Write ) (int ,TYPE_1__*,size_t,int*) ;} ;
typedef TYPE_1__ cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsBool ;


 int FALSE ;
 int TRUE ;
 int _cmsWriteUInt32Number (int ,TYPE_1__*,size_t) ;
 size_t cmsMAXCHANNELS ;
 int cmsUNUSED_PARAMETER (size_t) ;
 int stub1 (int ,TYPE_1__*,size_t,int*) ;

__attribute__((used)) static
cmsBool Type_ColorantOrderType_Write(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsUInt8Number* ColorantOrder = (cmsUInt8Number*) Ptr;
    cmsUInt32Number i, sz, Count;


    for (Count=i=0; i < cmsMAXCHANNELS; i++) {
        if (ColorantOrder[i] != 0xFF) Count++;
    }

    if (!_cmsWriteUInt32Number(ContextID, io, Count)) return FALSE;

    sz = Count * sizeof(cmsUInt8Number);
    if (!io -> Write(ContextID, io, sz, ColorantOrder)) return FALSE;

    return TRUE;

    cmsUNUSED_PARAMETER(nItems);
    cmsUNUSED_PARAMETER(self);
}
