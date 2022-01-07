
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef int cmsUInt32Number ;
struct TYPE_20__ {int (* Tell ) (int ,TYPE_1__*) ;int (* Seek ) (int ,TYPE_1__*,int) ;} ;
typedef TYPE_1__ cmsIOHANDLER ;
typedef int * cmsHANDLE ;
struct TYPE_21__ {int * DisplayValue; int * DisplayName; int Value; int Name; } ;
typedef TYPE_2__ cmsDICTentry ;
typedef int cmsContext ;
typedef scalar_t__ cmsBool ;
typedef int _cmsTagBase ;
struct TYPE_22__ {int DisplayValue; int DisplayName; int Value; int Name; } ;
typedef TYPE_3__ _cmsDICarray ;


 int AllocArray (int ,TYPE_3__*,int,int) ;
 scalar_t__ FALSE ;
 int FreeArray (int ,TYPE_3__*) ;
 scalar_t__ TRUE ;
 int WriteOffsetArray (int ,TYPE_1__*,TYPE_3__*,int,int) ;
 int WriteOneMLUC (int ,struct _cms_typehandler_struct*,TYPE_1__*,int *,int,int *,int) ;
 int WriteOneWChar (int ,TYPE_1__*,int *,int,int ,int) ;
 int _cmsWriteUInt32Number (int ,TYPE_1__*,int) ;
 TYPE_2__* cmsDictGetEntryList (int ,int *) ;
 TYPE_2__* cmsDictNextEntry (int ,TYPE_2__ const*) ;
 int cmsUNUSED_PARAMETER (int) ;
 int stub1 (int ,TYPE_1__*) ;
 int stub2 (int ,TYPE_1__*) ;
 int stub3 (int ,TYPE_1__*) ;
 int stub4 (int ,TYPE_1__*,int) ;
 int stub5 (int ,TYPE_1__*,int) ;

__attribute__((used)) static
cmsBool Type_Dictionary_Write(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsHANDLE hDict = (cmsHANDLE) Ptr;
    const cmsDICTentry* p;
    cmsBool AnyName, AnyValue;
    cmsUInt32Number i, Count, Length;
    cmsUInt32Number DirectoryPos, CurrentPos, BaseOffset;
   _cmsDICarray a;

    if (hDict == ((void*)0)) return FALSE;

    BaseOffset = io ->Tell(ContextID, io) - sizeof(_cmsTagBase);


    Count = 0; AnyName = FALSE; AnyValue = FALSE;
    for (p = cmsDictGetEntryList(ContextID, hDict); p != ((void*)0); p = cmsDictNextEntry(ContextID, p)) {

        if (p ->DisplayName != ((void*)0)) AnyName = TRUE;
        if (p ->DisplayValue != ((void*)0)) AnyValue = TRUE;
        Count++;
    }

    Length = 16;
    if (AnyName) Length += 8;
    if (AnyValue) Length += 8;

    if (!_cmsWriteUInt32Number(ContextID, io, Count)) return FALSE;
    if (!_cmsWriteUInt32Number(ContextID, io, Length)) return FALSE;


    DirectoryPos = io ->Tell(ContextID, io);


    if (!AllocArray(ContextID, &a, Count, Length)) goto Error;


    if (!WriteOffsetArray(ContextID, io, &a, Count, Length)) goto Error;


    p = cmsDictGetEntryList(ContextID, hDict);
    for (i=0; i < Count; i++) {

        if (!WriteOneWChar(ContextID, io, &a.Name, i, p ->Name, BaseOffset)) goto Error;
        if (!WriteOneWChar(ContextID, io, &a.Value, i, p ->Value, BaseOffset)) goto Error;

        if (p ->DisplayName != ((void*)0)) {
            if (!WriteOneMLUC(ContextID, self, io, &a.DisplayName, i, p ->DisplayName, BaseOffset)) goto Error;
        }

        if (p ->DisplayValue != ((void*)0)) {
            if (!WriteOneMLUC(ContextID, self, io, &a.DisplayValue, i, p ->DisplayValue, BaseOffset)) goto Error;
        }

       p = cmsDictNextEntry(ContextID, p);
    }


    CurrentPos = io ->Tell(ContextID, io);
    if (!io ->Seek(ContextID, io, DirectoryPos)) goto Error;

    if (!WriteOffsetArray(ContextID, io, &a, Count, Length)) goto Error;

    if (!io ->Seek(ContextID, io, CurrentPos)) goto Error;

    FreeArray(ContextID, &a);
    return TRUE;

Error:
    FreeArray(ContextID, &a);
    return FALSE;

    cmsUNUSED_PARAMETER(nItems);
}
