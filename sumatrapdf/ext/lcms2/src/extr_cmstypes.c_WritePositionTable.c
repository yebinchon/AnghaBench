
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef size_t cmsUInt32Number ;
struct TYPE_12__ {size_t (* Tell ) (int ,TYPE_1__*) ;int (* Seek ) (int ,TYPE_1__*,size_t) ;} ;
typedef TYPE_1__ cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsBool ;
typedef int (* PositionTableEntryFn ) (int ,struct _cms_typehandler_struct*,TYPE_1__*,void*,size_t,size_t) ;


 int FALSE ;
 int TRUE ;
 scalar_t__ _cmsCalloc (int ,size_t,int) ;
 int _cmsFree (int ,size_t*) ;
 int _cmsWriteUInt32Number (int ,TYPE_1__*,size_t) ;
 size_t stub1 (int ,TYPE_1__*) ;
 size_t stub2 (int ,TYPE_1__*) ;
 size_t stub3 (int ,TYPE_1__*) ;
 size_t stub4 (int ,TYPE_1__*) ;
 int stub5 (int ,TYPE_1__*,size_t) ;
 int stub6 (int ,TYPE_1__*,size_t) ;

__attribute__((used)) static
cmsBool WritePositionTable(cmsContext ContextID, struct _cms_typehandler_struct* self,
                               cmsIOHANDLER* io,
                               cmsUInt32Number SizeOfTag,
                               cmsUInt32Number Count,
                               cmsUInt32Number BaseOffset,
                               void *Cargo,
                               PositionTableEntryFn ElementFn)
{
    cmsUInt32Number i;
    cmsUInt32Number DirectoryPos, CurrentPos, Before;
    cmsUInt32Number *ElementOffsets = ((void*)0), *ElementSizes = ((void*)0);


    ElementOffsets = (cmsUInt32Number *) _cmsCalloc(ContextID, Count, sizeof(cmsUInt32Number));
    if (ElementOffsets == ((void*)0)) goto Error;

    ElementSizes = (cmsUInt32Number *) _cmsCalloc(ContextID, Count, sizeof(cmsUInt32Number));
    if (ElementSizes == ((void*)0)) goto Error;


    DirectoryPos = io ->Tell(ContextID, io);


    for (i=0; i < Count; i++) {

        if (!_cmsWriteUInt32Number(ContextID, io, 0)) goto Error;
        if (!_cmsWriteUInt32Number(ContextID, io, 0)) goto Error;
    }


    for (i=0; i < Count; i++) {

        Before = io ->Tell(ContextID, io);
        ElementOffsets[i] = Before - BaseOffset;


        if (!ElementFn(ContextID, self, io, Cargo, i, SizeOfTag)) goto Error;


        ElementSizes[i] = io ->Tell(ContextID, io) - Before;
    }


    CurrentPos = io ->Tell(ContextID, io);
    if (!io ->Seek(ContextID, io, DirectoryPos)) goto Error;

    for (i=0; i < Count; i++) {
        if (!_cmsWriteUInt32Number(ContextID, io, ElementOffsets[i])) goto Error;
        if (!_cmsWriteUInt32Number(ContextID, io, ElementSizes[i])) goto Error;
    }

    if (!io ->Seek(ContextID, io, CurrentPos)) goto Error;

    if (ElementOffsets != ((void*)0)) _cmsFree(ContextID, ElementOffsets);
    if (ElementSizes != ((void*)0)) _cmsFree(ContextID, ElementSizes);
    return TRUE;

Error:
    if (ElementOffsets != ((void*)0)) _cmsFree(ContextID, ElementOffsets);
    if (ElementSizes != ((void*)0)) _cmsFree(ContextID, ElementSizes);
    return FALSE;
}
