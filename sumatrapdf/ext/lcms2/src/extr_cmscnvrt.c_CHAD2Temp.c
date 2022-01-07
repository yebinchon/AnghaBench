
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * n; } ;
typedef TYPE_1__ cmsVEC3 ;
typedef int cmsMAT3 ;
typedef double cmsFloat64Number ;
typedef int cmsContext ;
typedef int cmsCIExyY ;
struct TYPE_8__ {int Z; int Y; int X; } ;
typedef TYPE_2__ cmsCIEXYZ ;
struct TYPE_9__ {int Z; int Y; int X; } ;


 double FALSE ;
 size_t VX ;
 size_t VY ;
 size_t VZ ;
 int _cmsMAT3eval (int ,TYPE_1__*,int *,TYPE_1__*) ;
 int _cmsMAT3inverse (int ,int *,int *) ;
 TYPE_4__* cmsD50_XYZ (int ) ;
 int cmsTempFromWhitePoint (int ,double*,int *) ;
 int cmsXYZ2xyY (int ,int *,TYPE_2__*) ;

__attribute__((used)) static
cmsFloat64Number CHAD2Temp(cmsContext ContextID, const cmsMAT3* Chad)
{

    cmsVEC3 d, s;
    cmsCIEXYZ Dest;
    cmsCIExyY DestChromaticity;
    cmsFloat64Number TempK;
    cmsMAT3 m1, m2;

    m1 = *Chad;
    if (!_cmsMAT3inverse(ContextID, &m1, &m2)) return FALSE;

    s.n[VX] = cmsD50_XYZ(ContextID) -> X;
    s.n[VY] = cmsD50_XYZ(ContextID) -> Y;
    s.n[VZ] = cmsD50_XYZ(ContextID) -> Z;

    _cmsMAT3eval(ContextID, &d, &m2, &s);

    Dest.X = d.n[VX];
    Dest.Y = d.n[VY];
    Dest.Z = d.n[VZ];

    cmsXYZ2xyY(ContextID, &DestChromaticity, &Dest);

    if (!cmsTempFromWhitePoint(ContextID, &TempK, &DestChromaticity))
        return -1.0;

    return TempK;
}
