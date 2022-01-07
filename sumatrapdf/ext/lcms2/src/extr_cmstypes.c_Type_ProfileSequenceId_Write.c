
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef scalar_t__ cmsUInt32Number ;
struct TYPE_8__ {int n; } ;
typedef TYPE_1__ cmsSEQ ;
struct TYPE_9__ {scalar_t__ (* Tell ) (int ,TYPE_2__*) ;} ;
typedef TYPE_2__ cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsBool ;
typedef int _cmsTagBase ;


 int FALSE ;
 int TRUE ;
 int WritePositionTable (int ,struct _cms_typehandler_struct*,TYPE_2__*,int ,int ,scalar_t__,TYPE_1__*,int ) ;
 int WriteSeqID ;
 int _cmsWriteUInt32Number (int ,TYPE_2__*,int ) ;
 int cmsUNUSED_PARAMETER (scalar_t__) ;
 scalar_t__ stub1 (int ,TYPE_2__*) ;

__attribute__((used)) static
cmsBool Type_ProfileSequenceId_Write(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsSEQ* Seq = (cmsSEQ*) Ptr;
    cmsUInt32Number BaseOffset;


    BaseOffset = io ->Tell(ContextID, io) - sizeof(_cmsTagBase);


    if (!_cmsWriteUInt32Number(ContextID, io, Seq ->n)) return FALSE;


    if (!WritePositionTable(ContextID, self, io, 0, Seq ->n, BaseOffset, Seq, WriteSeqID)) return FALSE;

    return TRUE;

    cmsUNUSED_PARAMETER(nItems);
}
