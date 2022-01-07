
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef int cmsUInt32Number ;
typedef int cmsStage ;
struct TYPE_5__ {int (* Seek ) (int ,TYPE_1__*,int ) ;} ;
typedef TYPE_1__ cmsIOHANDLER ;
typedef int cmsFloat64Number ;
typedef int cmsContext ;


 int _cmsRead15Fixed16Number (int ,TYPE_1__*,int *) ;
 int * cmsStageAllocMatrix (int ,int,int,int *,int *) ;
 int cmsUNUSED_PARAMETER (struct _cms_typehandler_struct*) ;
 int stub1 (int ,TYPE_1__*,int ) ;

__attribute__((used)) static
cmsStage* ReadMatrix(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number Offset)
{
    cmsFloat64Number dMat[3*3];
    cmsFloat64Number dOff[3];
    cmsStage* Mat;
    cmsUNUSED_PARAMETER(self);


    if (!io -> Seek(ContextID, io, Offset)) return ((void*)0);


    if (!_cmsRead15Fixed16Number(ContextID, io, &dMat[0])) return ((void*)0);
    if (!_cmsRead15Fixed16Number(ContextID, io, &dMat[1])) return ((void*)0);
    if (!_cmsRead15Fixed16Number(ContextID, io, &dMat[2])) return ((void*)0);
    if (!_cmsRead15Fixed16Number(ContextID, io, &dMat[3])) return ((void*)0);
    if (!_cmsRead15Fixed16Number(ContextID, io, &dMat[4])) return ((void*)0);
    if (!_cmsRead15Fixed16Number(ContextID, io, &dMat[5])) return ((void*)0);
    if (!_cmsRead15Fixed16Number(ContextID, io, &dMat[6])) return ((void*)0);
    if (!_cmsRead15Fixed16Number(ContextID, io, &dMat[7])) return ((void*)0);
    if (!_cmsRead15Fixed16Number(ContextID, io, &dMat[8])) return ((void*)0);

    if (!_cmsRead15Fixed16Number(ContextID, io, &dOff[0])) return ((void*)0);
    if (!_cmsRead15Fixed16Number(ContextID, io, &dOff[1])) return ((void*)0);
    if (!_cmsRead15Fixed16Number(ContextID, io, &dOff[2])) return ((void*)0);

    Mat = cmsStageAllocMatrix(ContextID, 3, 3, dMat, dOff);

     return Mat;
}
