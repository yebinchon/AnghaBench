
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t cmsUInt32Number ;
struct TYPE_5__ {scalar_t__ nEntries; int * Table16; } ;
typedef TYPE_1__ cmsToneCurve ;
typedef int cmsIOHANDLER ;
typedef scalar_t__ cmsFloat64Number ;
typedef int cmsContext ;


 int EmitRangeCheck (int ,int *) ;
 int _cmsIOPrintf (int ,int *,char*,...) ;
 scalar_t__ cmsEstimateGamma (int ,TYPE_1__*,double) ;
 scalar_t__ cmsIsToneCurveLinear (int ,TYPE_1__*) ;

__attribute__((used)) static
void Emit1Gamma(cmsContext ContextID, cmsIOHANDLER* m, cmsToneCurve* Table)
{
    cmsUInt32Number i;
    cmsFloat64Number gamma;

    if (Table == ((void*)0)) return;

    if (Table ->nEntries <= 0) return;


    if (cmsIsToneCurveLinear(ContextID, Table)) return;


    gamma = cmsEstimateGamma(ContextID, Table, 0.001);
     if (gamma > 0) {
            _cmsIOPrintf(ContextID, m, "{ %g exp } bind ", gamma);
            return;
     }

    _cmsIOPrintf(ContextID, m, "{ ");


    EmitRangeCheck(ContextID, m);






    _cmsIOPrintf(ContextID, m, " [");

    for (i=0; i < Table->nEntries; i++) {
        _cmsIOPrintf(ContextID, m, "%d ", Table->Table16[i]);
    }

    _cmsIOPrintf(ContextID, m, "] ");

    _cmsIOPrintf(ContextID, m, "dup ");
    _cmsIOPrintf(ContextID, m, "length 1 sub ");
    _cmsIOPrintf(ContextID, m, "3 -1 roll ");
    _cmsIOPrintf(ContextID, m, "mul ");
    _cmsIOPrintf(ContextID, m, "dup ");
    _cmsIOPrintf(ContextID, m, "dup ");
    _cmsIOPrintf(ContextID, m, "floor cvi ");
    _cmsIOPrintf(ContextID, m, "exch ");
    _cmsIOPrintf(ContextID, m, "ceiling cvi ");
    _cmsIOPrintf(ContextID, m, "3 index ");
    _cmsIOPrintf(ContextID, m, "exch ");
    _cmsIOPrintf(ContextID, m, "get ");
    _cmsIOPrintf(ContextID, m, "4 -1 roll ");
    _cmsIOPrintf(ContextID, m, "3 -1 roll ");
    _cmsIOPrintf(ContextID, m, "get ");
    _cmsIOPrintf(ContextID, m, "dup ");
    _cmsIOPrintf(ContextID, m, "3 1 roll ");
    _cmsIOPrintf(ContextID, m, "sub ");
    _cmsIOPrintf(ContextID, m, "3 -1 roll ");
    _cmsIOPrintf(ContextID, m, "dup ");
    _cmsIOPrintf(ContextID, m, "floor cvi ");
    _cmsIOPrintf(ContextID, m, "sub ");
    _cmsIOPrintf(ContextID, m, "mul ");
    _cmsIOPrintf(ContextID, m, "add ");
    _cmsIOPrintf(ContextID, m, "65535 div ");

    _cmsIOPrintf(ContextID, m, " } bind ");
}
