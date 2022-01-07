
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef int root ;
typedef scalar_t__ cmsUInt32Number ;
typedef int cmsUInt16Number ;
typedef int cmsNAMEDCOLORLIST ;
struct TYPE_6__ {int (* Write ) (int ,TYPE_1__*,int,char*) ;} ;
typedef TYPE_1__ cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsBool ;


 int FALSE ;
 int TRUE ;
 int _cmsWriteUInt16Array (int ,TYPE_1__*,int,int *) ;
 int _cmsWriteUInt32Number (int ,TYPE_1__*,scalar_t__) ;
 int cmsMAX_PATH ;
 scalar_t__ cmsNamedColorCount (int ,int *) ;
 int cmsNamedColorInfo (int ,int *,scalar_t__,char*,int *,int *,int *,int *) ;
 int cmsUNUSED_PARAMETER (scalar_t__) ;
 int memset (char*,int ,int) ;
 int stub1 (int ,TYPE_1__*,int,char*) ;

__attribute__((used)) static
cmsBool Type_ColorantTable_Write(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsNAMEDCOLORLIST* NamedColorList = (cmsNAMEDCOLORLIST*) Ptr;
    cmsUInt32Number i, nColors;

    nColors = cmsNamedColorCount(ContextID, NamedColorList);

    if (!_cmsWriteUInt32Number(ContextID, io, nColors)) return FALSE;

    for (i=0; i < nColors; i++) {

        char root[cmsMAX_PATH];
        cmsUInt16Number PCS[3];

        memset(root, 0, sizeof(root));

        if (!cmsNamedColorInfo(ContextID, NamedColorList, i, root, ((void*)0), ((void*)0), PCS, ((void*)0))) return 0;
        root[32] = 0;

        if (!io ->Write(ContextID, io, 32, root)) return FALSE;
        if (!_cmsWriteUInt16Array(ContextID, io, 3, PCS)) return FALSE;
    }

    return TRUE;

    cmsUNUSED_PARAMETER(nItems);
    cmsUNUSED_PARAMETER(self);
}
