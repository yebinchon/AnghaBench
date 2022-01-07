
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef size_t cmsUInt32Number ;
typedef int cmsUInt16Number ;
struct TYPE_3__ {size_t InputChannels; size_t OutputChannels; scalar_t__ Data; } ;
typedef TYPE_1__ cmsStage ;
typedef int cmsIOHANDLER ;
typedef int cmsFloat32Number ;
typedef int cmsContext ;
typedef int cmsBool ;
struct TYPE_4__ {scalar_t__* Offset; scalar_t__* Double; } ;
typedef TYPE_2__ _cmsStageMatrixData ;


 int FALSE ;
 int TRUE ;
 int _cmsWriteFloat32Number (int ,int *,int ) ;
 int _cmsWriteUInt16Number (int ,int *,int ) ;
 int cmsUNUSED_PARAMETER (size_t) ;

__attribute__((used)) static
cmsBool Type_MPEmatrix_Write(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsUInt32Number i, nElems;
    cmsStage* mpe = (cmsStage*) Ptr;
    _cmsStageMatrixData* Matrix = (_cmsStageMatrixData*) mpe ->Data;

    if (!_cmsWriteUInt16Number(ContextID, io, (cmsUInt16Number) mpe ->InputChannels)) return FALSE;
    if (!_cmsWriteUInt16Number(ContextID, io, (cmsUInt16Number) mpe ->OutputChannels)) return FALSE;

    nElems = mpe ->InputChannels * mpe ->OutputChannels;

    for (i=0; i < nElems; i++) {
        if (!_cmsWriteFloat32Number(ContextID, io, (cmsFloat32Number) Matrix->Double[i])) return FALSE;
    }


    for (i=0; i < mpe ->OutputChannels; i++) {

        if (Matrix ->Offset == ((void*)0)) {

               if (!_cmsWriteFloat32Number(ContextID, io, 0)) return FALSE;
        }
        else {
               if (!_cmsWriteFloat32Number(ContextID, io, (cmsFloat32Number) Matrix->Offset[i])) return FALSE;
        }
    }

    return TRUE;

    cmsUNUSED_PARAMETER(nItems);
    cmsUNUSED_PARAMETER(self);
}
