
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct tm {int dummy; } ;
struct _cms_typehandler_struct {int dummy; } ;
typedef struct _cms_typehandler_struct* cmsUInt32Number ;
struct TYPE_4__ {int (* Write ) (int ,TYPE_1__*,int,int *) ;} ;
typedef TYPE_1__ cmsIOHANDLER ;
typedef int cmsDateTimeNumber ;
typedef int cmsContext ;
typedef int cmsBool ;


 int FALSE ;
 int TRUE ;
 int _cmsEncodeDateTimeNumber (int ,int *,struct tm*) ;
 int cmsUNUSED_PARAMETER (struct _cms_typehandler_struct*) ;
 int stub1 (int ,TYPE_1__*,int,int *) ;

__attribute__((used)) static
cmsBool Type_DateTime_Write(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    struct tm * DateTime = (struct tm*) Ptr;
    cmsDateTimeNumber timestamp;

    _cmsEncodeDateTimeNumber(ContextID, &timestamp, DateTime);
    if (!io ->Write(ContextID, io, sizeof(cmsDateTimeNumber), &timestamp)) return FALSE;

    return TRUE;

    cmsUNUSED_PARAMETER(nItems);
    cmsUNUSED_PARAMETER(self);
}
