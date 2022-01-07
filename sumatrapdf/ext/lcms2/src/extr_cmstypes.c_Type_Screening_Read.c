
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef size_t cmsUInt32Number ;
struct TYPE_5__ {int Flag; int nChannels; TYPE_1__* Channels; } ;
typedef TYPE_2__ cmsScreening ;
typedef int cmsIOHANDLER ;
typedef int cmsContext ;
struct TYPE_4__ {int SpotShape; int ScreenAngle; int Frequency; } ;


 int _cmsFree (int ,TYPE_2__*) ;
 scalar_t__ _cmsMallocZero (int ,int) ;
 int _cmsRead15Fixed16Number (int ,int *,int *) ;
 int _cmsReadUInt32Number (int ,int *,int*) ;
 int cmsMAXCHANNELS ;
 int cmsUNUSED_PARAMETER (size_t) ;

__attribute__((used)) static
void *Type_Screening_Read(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsScreening* sc = ((void*)0);
    cmsUInt32Number i;

    sc = (cmsScreening*) _cmsMallocZero(ContextID, sizeof(cmsScreening));
    if (sc == ((void*)0)) return ((void*)0);

    *nItems = 0;

    if (!_cmsReadUInt32Number(ContextID, io, &sc ->Flag)) goto Error;
    if (!_cmsReadUInt32Number(ContextID, io, &sc ->nChannels)) goto Error;

    if (sc ->nChannels > cmsMAXCHANNELS - 1)
        sc ->nChannels = cmsMAXCHANNELS - 1;

    for (i=0; i < sc ->nChannels; i++) {

        if (!_cmsRead15Fixed16Number(ContextID, io, &sc ->Channels[i].Frequency)) goto Error;
        if (!_cmsRead15Fixed16Number(ContextID, io, &sc ->Channels[i].ScreenAngle)) goto Error;
        if (!_cmsReadUInt32Number(ContextID, io, &sc ->Channels[i].SpotShape)) goto Error;
    }


    *nItems = 1;

    return (void*) sc;

Error:
    if (sc != ((void*)0))
        _cmsFree(ContextID, sc);

    return ((void*)0);
    cmsUNUSED_PARAMETER(self);
    cmsUNUSED_PARAMETER(SizeOfTag);
}
