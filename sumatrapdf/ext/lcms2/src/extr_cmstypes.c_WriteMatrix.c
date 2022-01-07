
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
struct TYPE_4__ {scalar_t__ Data; } ;
typedef TYPE_1__ cmsStage ;
typedef int cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsBool ;
struct TYPE_5__ {int * Offset; int * Double; } ;
typedef TYPE_2__ _cmsStageMatrixData ;


 int FALSE ;
 int TRUE ;
 int _cmsWrite15Fixed16Number (int ,int *,int ) ;
 int cmsUNUSED_PARAMETER (struct _cms_typehandler_struct*) ;

__attribute__((used)) static
cmsBool WriteMatrix(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsStage* mpe)
{
    _cmsStageMatrixData* m = (_cmsStageMatrixData*) mpe -> Data;


    if (!_cmsWrite15Fixed16Number(ContextID, io, m -> Double[0])) return FALSE;
    if (!_cmsWrite15Fixed16Number(ContextID, io, m -> Double[1])) return FALSE;
    if (!_cmsWrite15Fixed16Number(ContextID, io, m -> Double[2])) return FALSE;
    if (!_cmsWrite15Fixed16Number(ContextID, io, m -> Double[3])) return FALSE;
    if (!_cmsWrite15Fixed16Number(ContextID, io, m -> Double[4])) return FALSE;
    if (!_cmsWrite15Fixed16Number(ContextID, io, m -> Double[5])) return FALSE;
    if (!_cmsWrite15Fixed16Number(ContextID, io, m -> Double[6])) return FALSE;
    if (!_cmsWrite15Fixed16Number(ContextID, io, m -> Double[7])) return FALSE;
    if (!_cmsWrite15Fixed16Number(ContextID, io, m -> Double[8])) return FALSE;

    if (m ->Offset != ((void*)0)) {

    if (!_cmsWrite15Fixed16Number(ContextID, io, m -> Offset[0])) return FALSE;
    if (!_cmsWrite15Fixed16Number(ContextID, io, m -> Offset[1])) return FALSE;
    if (!_cmsWrite15Fixed16Number(ContextID, io, m -> Offset[2])) return FALSE;
    }
    else {
        if (!_cmsWrite15Fixed16Number(ContextID, io, 0)) return FALSE;
        if (!_cmsWrite15Fixed16Number(ContextID, io, 0)) return FALSE;
        if (!_cmsWrite15Fixed16Number(ContextID, io, 0)) return FALSE;

    }


    return TRUE;

    cmsUNUSED_PARAMETER(self);
}
