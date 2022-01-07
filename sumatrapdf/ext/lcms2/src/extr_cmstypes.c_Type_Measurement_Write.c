
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef struct _cms_typehandler_struct* cmsUInt32Number ;
typedef int cmsIOHANDLER ;
struct TYPE_2__ {int IlluminantType; int Flare; int Geometry; int Backing; int Observer; } ;
typedef TYPE_1__ cmsICCMeasurementConditions ;
typedef int cmsContext ;
typedef int cmsBool ;


 int FALSE ;
 int TRUE ;
 int _cmsWrite15Fixed16Number (int ,int *,int ) ;
 int _cmsWriteUInt32Number (int ,int *,int ) ;
 int _cmsWriteXYZNumber (int ,int *,int *) ;
 int cmsUNUSED_PARAMETER (struct _cms_typehandler_struct*) ;

__attribute__((used)) static
cmsBool Type_Measurement_Write(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsICCMeasurementConditions* mc =(cmsICCMeasurementConditions*) Ptr;

    if (!_cmsWriteUInt32Number(ContextID, io, mc->Observer)) return FALSE;
    if (!_cmsWriteXYZNumber(ContextID, io, &mc->Backing)) return FALSE;
    if (!_cmsWriteUInt32Number(ContextID, io, mc->Geometry)) return FALSE;
    if (!_cmsWrite15Fixed16Number(ContextID, io, mc->Flare)) return FALSE;
    if (!_cmsWriteUInt32Number(ContextID, io, mc->IlluminantType)) return FALSE;

    return TRUE;

    cmsUNUSED_PARAMETER(nItems);
    cmsUNUSED_PARAMETER(self);
}
