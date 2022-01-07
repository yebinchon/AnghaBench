
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int wchar_t ;
struct _cms_typehandler_struct {int dummy; } ;
typedef int cmsUInt32Number ;
typedef int cmsMLU ;
struct TYPE_12__ {int (* Tell ) (int ,TYPE_1__*) ;} ;
typedef TYPE_1__ cmsIOHANDLER ;
typedef int * cmsHANDLE ;
typedef int cmsContext ;
typedef int cmsBool ;
typedef int _cmsTagBase ;
struct TYPE_13__ {int DisplayValue; int DisplayName; int Value; int Name; } ;
typedef TYPE_2__ _cmsDICarray ;


 int AllocArray (int ,TYPE_2__*,int,int) ;
 int FALSE ;
 int FreeArray (int ,TYPE_2__*) ;
 int ReadOffsetArray (int ,TYPE_1__*,TYPE_2__*,int,int,int) ;
 int ReadOneMLUC (int ,struct _cms_typehandler_struct*,TYPE_1__*,int *,int,int **) ;
 int ReadOneWChar (int ,TYPE_1__*,int *,int,int **) ;
 int _cmsFree (int ,int *) ;
 int _cmsReadUInt32Number (int ,TYPE_1__*,int*) ;
 int cmsDictAddEntry (int ,int *,int *,int *,int *,int *) ;
 int * cmsDictAlloc (int ) ;
 int cmsDictFree (int ,int *) ;
 int cmsERROR_CORRUPTION_DETECTED ;
 int cmsERROR_UNKNOWN_EXTENSION ;
 int cmsMLUfree (int ,int *) ;
 int cmsSignalError (int ,int ,char*,...) ;
 int stub1 (int ,TYPE_1__*) ;

__attribute__((used)) static
void *Type_Dictionary_Read(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
   cmsHANDLE hDict;
   cmsUInt32Number i, Count, Length;
   cmsUInt32Number BaseOffset;
   _cmsDICarray a;
   wchar_t *NameWCS = ((void*)0), *ValueWCS = ((void*)0);
   cmsMLU *DisplayNameMLU = ((void*)0), *DisplayValueMLU=((void*)0);
   cmsBool rc;

    *nItems = 0;


    BaseOffset = io ->Tell(ContextID, io) - sizeof(_cmsTagBase);


    if (!_cmsReadUInt32Number(ContextID, io, &Count)) return ((void*)0);
    SizeOfTag -= sizeof(cmsUInt32Number);


    if (!_cmsReadUInt32Number(ContextID, io, &Length)) return ((void*)0);
    SizeOfTag -= sizeof(cmsUInt32Number);


    if (Length != 16 && Length != 24 && Length != 32) {
         cmsSignalError(ContextID, cmsERROR_UNKNOWN_EXTENSION, "Unknown record length in dictionary '%d'", Length);
         return ((void*)0);
    }


    hDict = cmsDictAlloc(ContextID);
    if (hDict == ((void*)0)) return ((void*)0);


    if (!AllocArray(ContextID, &a, Count, Length)) goto Error;


    if (!ReadOffsetArray(ContextID, io, &a, Count, Length, BaseOffset)) goto Error;


    for (i=0; i < Count; i++) {

        if (!ReadOneWChar(ContextID, io, &a.Name, i, &NameWCS)) goto Error;
        if (!ReadOneWChar(ContextID, io, &a.Value, i, &ValueWCS)) goto Error;

        if (Length > 16) {
            if (!ReadOneMLUC(ContextID, self, io, &a.DisplayName, i, &DisplayNameMLU)) goto Error;
        }

        if (Length > 24) {
            if (!ReadOneMLUC(ContextID, self, io, &a.DisplayValue, i, &DisplayValueMLU)) goto Error;
        }

        if (NameWCS == ((void*)0) || ValueWCS == ((void*)0)) {

            cmsSignalError(ContextID, cmsERROR_CORRUPTION_DETECTED, "Bad dictionary Name/Value");
            rc = FALSE;
        }
        else {

            rc = cmsDictAddEntry(ContextID, hDict, NameWCS, ValueWCS, DisplayNameMLU, DisplayValueMLU);
        }

        if (NameWCS != ((void*)0)) _cmsFree(ContextID, NameWCS);
        if (ValueWCS != ((void*)0)) _cmsFree(ContextID, ValueWCS);
        if (DisplayNameMLU != ((void*)0)) cmsMLUfree(ContextID, DisplayNameMLU);
        if (DisplayValueMLU != ((void*)0)) cmsMLUfree(ContextID, DisplayValueMLU);

        if (!rc) goto Error;
    }

   FreeArray(ContextID, &a);
   *nItems = 1;
   return (void*) hDict;

Error:
   FreeArray(ContextID, &a);
   cmsDictFree(ContextID, hDict);
   return ((void*)0);
}
