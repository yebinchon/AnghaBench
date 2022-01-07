
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef scalar_t__ cmsUInt32Number ;
typedef int cmsUInt16Number ;
typedef int cmsNAMEDCOLORLIST ;
struct TYPE_8__ {int (* Read ) (int ,TYPE_1__*,char*,int,int) ;} ;
typedef TYPE_1__ cmsIOHANDLER ;
typedef int cmsContext ;
typedef int Colorant ;


 int _cmsReadUInt16Array (int ,TYPE_1__*,scalar_t__,int *) ;
 int _cmsReadUInt32Number (int ,TYPE_1__*,scalar_t__*) ;
 int * cmsAllocNamedColorList (int ,scalar_t__,scalar_t__,char*,char*) ;
 int cmsAppendNamedColor (int ,int *,char*,int *,int *) ;
 int cmsERROR_RANGE ;
 int cmsFreeNamedColorList (int ,int *) ;
 scalar_t__ cmsMAXCHANNELS ;
 int cmsSignalError (int ,int ,char*,scalar_t__) ;
 int cmsUNUSED_PARAMETER (scalar_t__) ;
 int memset (int *,int ,int) ;
 int stub1 (int ,TYPE_1__*,char*,int,int) ;
 int stub2 (int ,TYPE_1__*,char*,int,int) ;
 int stub3 (int ,TYPE_1__*,char*,int,int) ;

__attribute__((used)) static
void *Type_NamedColor_Read(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{

    cmsUInt32Number vendorFlag;
    cmsUInt32Number count;
    cmsUInt32Number nDeviceCoords;
    char prefix[32];
    char suffix[32];
    cmsNAMEDCOLORLIST* v;
    cmsUInt32Number i;
    cmsUNUSED_PARAMETER(self);


    *nItems = 0;
    if (!_cmsReadUInt32Number(ContextID, io, &vendorFlag)) return ((void*)0);
    if (!_cmsReadUInt32Number(ContextID, io, &count)) return ((void*)0);
    if (!_cmsReadUInt32Number(ContextID, io, &nDeviceCoords)) return ((void*)0);

    if (io -> Read(ContextID, io,prefix, 32, 1) != 1) return ((void*)0);
    if (io -> Read(ContextID, io,suffix, 32, 1) != 1) return ((void*)0);

    prefix[31] = suffix[31] = 0;

    v = cmsAllocNamedColorList(ContextID, count, nDeviceCoords, prefix, suffix);
    if (v == ((void*)0)) {
        cmsSignalError(ContextID, cmsERROR_RANGE, "Too many named colors '%d'", count);
        return ((void*)0);
    }

    if (nDeviceCoords > cmsMAXCHANNELS) {
        cmsSignalError(ContextID, cmsERROR_RANGE, "Too many device coordinates '%d'", nDeviceCoords);
        goto Error;
    }
    for (i=0; i < count; i++) {

        cmsUInt16Number PCS[3];
        cmsUInt16Number Colorant[cmsMAXCHANNELS];
        char Root[33];

        memset(Colorant, 0, sizeof(Colorant));
        if (io -> Read(ContextID, io,Root, 32, 1) != 1) goto Error;
        Root[32] = 0;

        if (!_cmsReadUInt16Array(ContextID, io, 3, PCS)) goto Error;
        if (!_cmsReadUInt16Array(ContextID, io, nDeviceCoords, Colorant)) goto Error;

        if (!cmsAppendNamedColor(ContextID, v, Root, PCS, Colorant)) goto Error;
    }

    *nItems = 1;
    return (void*) v ;

Error:
    cmsFreeNamedColorList(ContextID, v);
    return ((void*)0);

    cmsUNUSED_PARAMETER(SizeOfTag);
}
