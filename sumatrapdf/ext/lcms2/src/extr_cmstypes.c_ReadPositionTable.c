
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef int cmsUInt32Number ;
struct TYPE_8__ {int (* Tell ) (int ,TYPE_1__*) ;int ReportedSize; int (* Seek ) (int ,TYPE_1__*,int) ;} ;
typedef TYPE_1__ cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsBool ;
typedef int (* PositionTableEntryFn ) (int ,struct _cms_typehandler_struct*,TYPE_1__*,void*,int,int) ;


 int FALSE ;
 int TRUE ;
 scalar_t__ _cmsCalloc (int ,int,int) ;
 int _cmsFree (int ,int*) ;
 int _cmsReadUInt32Number (int ,TYPE_1__*,int*) ;
 int stub1 (int ,TYPE_1__*) ;
 int stub2 (int ,TYPE_1__*,int) ;

__attribute__((used)) static
cmsBool ReadPositionTable(cmsContext ContextID, struct _cms_typehandler_struct* self,
                              cmsIOHANDLER* io,
                              cmsUInt32Number Count,
                              cmsUInt32Number BaseOffset,
                              void *Cargo,
                              PositionTableEntryFn ElementFn)
{
    cmsUInt32Number i;
    cmsUInt32Number *ElementOffsets = ((void*)0), *ElementSizes = ((void*)0);
    cmsUInt32Number currentPosition;

    currentPosition = io->Tell(ContextID, io);


    if (((io->ReportedSize - currentPosition) / (2 * sizeof(cmsUInt32Number))) < Count)
        return FALSE;


    ElementOffsets = (cmsUInt32Number *) _cmsCalloc(ContextID, Count, sizeof(cmsUInt32Number));
    if (ElementOffsets == ((void*)0)) goto Error;

    ElementSizes = (cmsUInt32Number *) _cmsCalloc(ContextID, Count, sizeof(cmsUInt32Number));
    if (ElementSizes == ((void*)0)) goto Error;

    for (i=0; i < Count; i++) {

        if (!_cmsReadUInt32Number(ContextID, io, &ElementOffsets[i])) goto Error;
        if (!_cmsReadUInt32Number(ContextID, io, &ElementSizes[i])) goto Error;

        ElementOffsets[i] += BaseOffset;
    }


    for (i=0; i < Count; i++) {

        if (!io -> Seek(ContextID, io, ElementOffsets[i])) goto Error;


        if (!ElementFn(ContextID, self, io, Cargo, i, ElementSizes[i])) goto Error;
    }


    if (ElementOffsets != ((void*)0)) _cmsFree(ContextID, ElementOffsets);
    if (ElementSizes != ((void*)0)) _cmsFree(ContextID, ElementSizes);
    return TRUE;

Error:
    if (ElementOffsets != ((void*)0)) _cmsFree(ContextID, ElementOffsets);
    if (ElementSizes != ((void*)0)) _cmsFree(ContextID, ElementSizes);
    return FALSE;
}
