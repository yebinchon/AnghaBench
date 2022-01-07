
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int cmsUInt32Number ;
typedef int cmsUInt16Number ;
struct TYPE_4__ {int nSegments; TYPE_2__* Segments; } ;
typedef TYPE_1__ cmsToneCurve ;
typedef int cmsIOHANDLER ;
typedef int cmsFloat32Number ;
struct TYPE_5__ {int Type; int nGridPoints; scalar_t__* Params; int * SampledPoints; int x1; } ;
typedef TYPE_2__ cmsCurveSegment ;
typedef int cmsContext ;
typedef int cmsBool ;


 int FALSE ;
 int TRUE ;
 int _cmsWriteFloat32Number (int ,int *,int ) ;
 int _cmsWriteUInt16Number (int ,int *,int ) ;
 int _cmsWriteUInt32Number (int ,int *,int) ;
 scalar_t__ cmsSigFormulaCurveSeg ;
 scalar_t__ cmsSigSampledCurveSeg ;
 int cmsSigSegmentedCurve ;

__attribute__((used)) static
cmsBool WriteSegmentedCurve(cmsContext ContextID, cmsIOHANDLER* io, cmsToneCurve* g)
{
    cmsUInt32Number i, j;
    cmsCurveSegment* Segments = g ->Segments;
    cmsUInt32Number nSegments = g ->nSegments;

    if (!_cmsWriteUInt32Number(ContextID, io, cmsSigSegmentedCurve)) goto Error;
    if (!_cmsWriteUInt32Number(ContextID, io, 0)) goto Error;
    if (!_cmsWriteUInt16Number(ContextID, io, (cmsUInt16Number) nSegments)) goto Error;
    if (!_cmsWriteUInt16Number(ContextID, io, 0)) goto Error;


    for (i=0; i < nSegments - 1; i++) {
        if (!_cmsWriteFloat32Number(ContextID, io, Segments[i].x1)) goto Error;
    }


    for (i=0; i < g ->nSegments; i++) {

        cmsCurveSegment* ActualSeg = Segments + i;

        if (ActualSeg -> Type == 0) {


            if (!_cmsWriteUInt32Number(ContextID, io, (cmsUInt32Number) cmsSigSampledCurveSeg)) goto Error;
            if (!_cmsWriteUInt32Number(ContextID, io, 0)) goto Error;
            if (!_cmsWriteUInt32Number(ContextID, io, ActualSeg -> nGridPoints)) goto Error;

            for (j=0; j < g ->Segments[i].nGridPoints; j++) {
                if (!_cmsWriteFloat32Number(ContextID, io, ActualSeg -> SampledPoints[j])) goto Error;
            }

        }
        else {
            int Type;
            cmsUInt32Number ParamsByType[] = { 4, 5, 5 };


            if (!_cmsWriteUInt32Number(ContextID, io, (cmsUInt32Number) cmsSigFormulaCurveSeg)) goto Error;
            if (!_cmsWriteUInt32Number(ContextID, io, 0)) goto Error;


            Type = ActualSeg ->Type - 6;
            if (Type > 2 || Type < 0) goto Error;

            if (!_cmsWriteUInt16Number(ContextID, io, (cmsUInt16Number) Type)) goto Error;
            if (!_cmsWriteUInt16Number(ContextID, io, 0)) goto Error;

            for (j=0; j < ParamsByType[Type]; j++) {
                if (!_cmsWriteFloat32Number(ContextID, io, (cmsFloat32Number) ActualSeg ->Params[j])) goto Error;
            }
        }



    }

    return TRUE;

Error:
    return FALSE;
}
