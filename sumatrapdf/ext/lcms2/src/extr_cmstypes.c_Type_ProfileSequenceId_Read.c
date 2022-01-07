
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef int cmsUInt32Number ;
typedef void cmsSEQ ;
struct TYPE_6__ {int (* Tell ) (int ,TYPE_1__*) ;} ;
typedef TYPE_1__ cmsIOHANDLER ;
typedef int cmsContext ;
typedef int _cmsTagBase ;


 int ReadPositionTable (int ,struct _cms_typehandler_struct*,TYPE_1__*,int,int,void*,int ) ;
 int ReadSeqID ;
 int _cmsReadUInt32Number (int ,TYPE_1__*,int*) ;
 void* cmsAllocProfileSequenceDescription (int ,int) ;
 int cmsFreeProfileSequenceDescription (int ,void*) ;
 int stub1 (int ,TYPE_1__*) ;

__attribute__((used)) static
void *Type_ProfileSequenceId_Read(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsSEQ* OutSeq;
    cmsUInt32Number Count;
    cmsUInt32Number BaseOffset;

    *nItems = 0;


    BaseOffset = io ->Tell(ContextID, io) - sizeof(_cmsTagBase);


    if (!_cmsReadUInt32Number(ContextID, io, &Count)) return ((void*)0);
    SizeOfTag -= sizeof(cmsUInt32Number);


    OutSeq = cmsAllocProfileSequenceDescription(ContextID, Count);
    if (OutSeq == ((void*)0)) return ((void*)0);



    if (!ReadPositionTable(ContextID, self, io, Count, BaseOffset, OutSeq, ReadSeqID)) {

        cmsFreeProfileSequenceDescription(ContextID, OutSeq);
        return ((void*)0);
    }


    *nItems = 1;
    return OutSeq;

}
