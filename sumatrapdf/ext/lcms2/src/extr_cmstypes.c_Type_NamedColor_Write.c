
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef scalar_t__ cmsUInt32Number ;
typedef int cmsUInt16Number ;
struct TYPE_11__ {scalar_t__ ColorantCount; scalar_t__ Suffix; scalar_t__ Prefix; } ;
typedef TYPE_1__ cmsNAMEDCOLORLIST ;
struct TYPE_12__ {int (* Write ) (int ,TYPE_2__*,int,char*) ;} ;
typedef TYPE_2__ cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsBool ;


 int FALSE ;
 int TRUE ;
 int _cmsWriteUInt16Array (int ,TYPE_2__*,int,int *) ;
 int _cmsWriteUInt32Number (int ,TYPE_2__*,scalar_t__) ;
 int cmsMAXCHANNELS ;
 int cmsMAX_PATH ;
 scalar_t__ cmsNamedColorCount (int ,TYPE_1__*) ;
 int cmsNamedColorInfo (int ,TYPE_1__*,scalar_t__,char*,int *,int *,int *,int *) ;
 int cmsUNUSED_PARAMETER (scalar_t__) ;
 int strncpy (char*,char const*,int) ;
 int stub1 (int ,TYPE_2__*,int,char*) ;
 int stub2 (int ,TYPE_2__*,int,char*) ;
 int stub3 (int ,TYPE_2__*,int,char*) ;

__attribute__((used)) static
cmsBool Type_NamedColor_Write(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsNAMEDCOLORLIST* NamedColorList = (cmsNAMEDCOLORLIST*) Ptr;
    char prefix[33];
    char suffix[33];
    cmsUInt32Number i, nColors;

    nColors = cmsNamedColorCount(ContextID, NamedColorList);

    if (!_cmsWriteUInt32Number(ContextID, io, 0)) return FALSE;
    if (!_cmsWriteUInt32Number(ContextID, io, nColors)) return FALSE;
    if (!_cmsWriteUInt32Number(ContextID, io, NamedColorList ->ColorantCount)) return FALSE;

    strncpy(prefix, (const char*) NamedColorList->Prefix, 32);
    strncpy(suffix, (const char*) NamedColorList->Suffix, 32);

    suffix[32] = prefix[32] = 0;

    if (!io ->Write(ContextID, io, 32, prefix)) return FALSE;
    if (!io ->Write(ContextID, io, 32, suffix)) return FALSE;

    for (i=0; i < nColors; i++) {

       cmsUInt16Number PCS[3];
       cmsUInt16Number Colorant[cmsMAXCHANNELS];
       char Root[cmsMAX_PATH];

        if (!cmsNamedColorInfo(ContextID, NamedColorList, i, Root, ((void*)0), ((void*)0), PCS, Colorant)) return 0;
        Root[32] = 0;
        if (!io ->Write(ContextID, io, 32 , Root)) return FALSE;
        if (!_cmsWriteUInt16Array(ContextID, io, 3, PCS)) return FALSE;
        if (!_cmsWriteUInt16Array(ContextID, io, NamedColorList ->ColorantCount, Colorant)) return FALSE;
    }

    return TRUE;

    cmsUNUSED_PARAMETER(nItems);
    cmsUNUSED_PARAMETER(self);
}
