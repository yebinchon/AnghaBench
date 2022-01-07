
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef size_t cmsUInt32Number ;
typedef int cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsBool ;
struct TYPE_2__ {int * TheCurves; } ;
typedef TYPE_1__ _cmsStageToneCurvesData ;


 int WriteSegmentedCurve (int ,int *,int ) ;
 int cmsUNUSED_PARAMETER (size_t) ;

__attribute__((used)) static
cmsBool WriteMPECurve(cmsContext ContextID, struct _cms_typehandler_struct* self,
                      cmsIOHANDLER* io,
                      void* Cargo,
                      cmsUInt32Number n,
                      cmsUInt32Number SizeOfTag)
{
    _cmsStageToneCurvesData* Curves = (_cmsStageToneCurvesData*) Cargo;

    return WriteSegmentedCurve(ContextID, io, Curves ->TheCurves[n]);

    cmsUNUSED_PARAMETER(SizeOfTag);
    cmsUNUSED_PARAMETER(self);
}
