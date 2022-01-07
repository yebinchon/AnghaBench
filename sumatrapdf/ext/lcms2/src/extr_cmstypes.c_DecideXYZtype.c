
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsTagTypeSignature ;
typedef void const* cmsFloat64Number ;
typedef void const* cmsContext ;


 int cmsSigXYZType ;
 int cmsUNUSED_PARAMETER (void const*) ;

__attribute__((used)) static
cmsTagTypeSignature DecideXYZtype(cmsContext ContextID, cmsFloat64Number ICCVersion, const void *Data)
{
    return cmsSigXYZType;

    cmsUNUSED_PARAMETER(ICCVersion);
    cmsUNUSED_PARAMETER(Data);
    cmsUNUSED_PARAMETER(ContextID);
}
