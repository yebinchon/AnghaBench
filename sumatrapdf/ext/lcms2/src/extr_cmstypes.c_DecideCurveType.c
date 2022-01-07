
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nSegments; TYPE_1__* Segments; } ;
typedef TYPE_2__ cmsToneCurve ;
typedef int cmsTagTypeSignature ;
typedef double cmsFloat64Number ;
typedef int cmsContext ;
struct TYPE_3__ {int Type; } ;


 int cmsSigCurveType ;
 int cmsSigParametricCurveType ;
 int cmsUNUSED_PARAMETER (int ) ;

__attribute__((used)) static
cmsTagTypeSignature DecideCurveType(cmsContext ContextID, cmsFloat64Number ICCVersion, const void *Data)
{
    cmsToneCurve* Curve = (cmsToneCurve*) Data;
    cmsUNUSED_PARAMETER(ContextID);

    if (ICCVersion < 4.0) return cmsSigCurveType;
    if (Curve ->nSegments != 1) return cmsSigCurveType;
    if (Curve ->Segments[0].Type < 0) return cmsSigCurveType;
    if (Curve ->Segments[0].Type > 5) return cmsSigCurveType;

    return cmsSigParametricCurveType;
}
