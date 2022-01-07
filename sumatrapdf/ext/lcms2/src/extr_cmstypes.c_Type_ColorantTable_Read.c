
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef scalar_t__ cmsUInt32Number ;
typedef int cmsUInt16Number ;
typedef void cmsNAMEDCOLORLIST ;
struct TYPE_6__ {int (* Read ) (int ,TYPE_1__*,char*,int,int) ;} ;
typedef TYPE_1__ cmsIOHANDLER ;
typedef int cmsContext ;


 int _cmsReadUInt16Array (int ,TYPE_1__*,int,int *) ;
 int _cmsReadUInt32Number (int ,TYPE_1__*,scalar_t__*) ;
 void* cmsAllocNamedColorList (int ,scalar_t__,int ,char*,char*) ;
 int cmsAppendNamedColor (int ,void*,char*,int *,int *) ;
 int cmsERROR_RANGE ;
 int cmsFreeNamedColorList (int ,void*) ;
 scalar_t__ cmsMAXCHANNELS ;
 int cmsSignalError (int ,int ,char*,scalar_t__) ;
 int cmsUNUSED_PARAMETER (scalar_t__) ;
 int stub1 (int ,TYPE_1__*,char*,int,int) ;

__attribute__((used)) static
void *Type_ColorantTable_Read(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsUInt32Number i, Count;
    cmsNAMEDCOLORLIST* List;
    char Name[34];
    cmsUInt16Number PCS[3];
    cmsUNUSED_PARAMETER(self);


    if (!_cmsReadUInt32Number(ContextID, io, &Count)) return ((void*)0);

    if (Count > cmsMAXCHANNELS) {
        cmsSignalError(ContextID, cmsERROR_RANGE, "Too many colorants '%d'", Count);
        return ((void*)0);
    }

    List = cmsAllocNamedColorList(ContextID, Count, 0, "", "");
    for (i=0; i < Count; i++) {

        if (io ->Read(ContextID, io,Name, 32, 1) != 1) goto Error;
        Name[32] = 0;

        if (!_cmsReadUInt16Array(ContextID, io, 3, PCS)) goto Error;

        if (!cmsAppendNamedColor(ContextID, List, Name, PCS, ((void*)0))) goto Error;

    }

    *nItems = 1;
    return List;

Error:
    *nItems = 0;
    cmsFreeNamedColorList(ContextID, List);
    return ((void*)0);

    cmsUNUSED_PARAMETER(SizeOfTag);
}
