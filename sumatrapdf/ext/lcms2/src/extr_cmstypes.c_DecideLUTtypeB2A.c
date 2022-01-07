
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cmsTagTypeSignature ;
struct TYPE_2__ {scalar_t__ SaveAs8Bits; } ;
typedef TYPE_1__ cmsPipeline ;
typedef double cmsFloat64Number ;
typedef int cmsContext ;


 int cmsSigLut16Type ;
 int cmsSigLut8Type ;
 int cmsSigLutBtoAType ;
 int cmsUNUSED_PARAMETER (int ) ;

__attribute__((used)) static
cmsTagTypeSignature DecideLUTtypeB2A(cmsContext ContextID, cmsFloat64Number ICCVersion, const void *Data)
{
    cmsPipeline* Lut = (cmsPipeline*) Data;
    cmsUNUSED_PARAMETER(ContextID);

    if (ICCVersion < 4.0) {
        if (Lut ->SaveAs8Bits) return cmsSigLut8Type;
        return cmsSigLut16Type;
    }
    else {
         return cmsSigLutBtoAType;
    }
}
