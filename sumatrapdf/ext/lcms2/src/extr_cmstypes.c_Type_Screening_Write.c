
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef size_t cmsUInt32Number ;
struct TYPE_4__ {size_t Flag; size_t nChannels; TYPE_1__* Channels; } ;
typedef TYPE_2__ cmsScreening ;
typedef int cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsBool ;
struct TYPE_3__ {size_t SpotShape; int ScreenAngle; int Frequency; } ;


 int FALSE ;
 int TRUE ;
 int _cmsWrite15Fixed16Number (int ,int *,int ) ;
 int _cmsWriteUInt32Number (int ,int *,size_t) ;
 int cmsUNUSED_PARAMETER (size_t) ;

__attribute__((used)) static
cmsBool Type_Screening_Write(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsScreening* sc = (cmsScreening* ) Ptr;
    cmsUInt32Number i;

    if (!_cmsWriteUInt32Number(ContextID, io, sc ->Flag)) return FALSE;
    if (!_cmsWriteUInt32Number(ContextID, io, sc ->nChannels)) return FALSE;

    for (i=0; i < sc ->nChannels; i++) {

        if (!_cmsWrite15Fixed16Number(ContextID, io, sc ->Channels[i].Frequency)) return FALSE;
        if (!_cmsWrite15Fixed16Number(ContextID, io, sc ->Channels[i].ScreenAngle)) return FALSE;
        if (!_cmsWriteUInt32Number(ContextID, io, sc ->Channels[i].SpotShape)) return FALSE;
    }

    return TRUE;

    cmsUNUSED_PARAMETER(nItems);
    cmsUNUSED_PARAMETER(self);
}
