
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsTagTypeSignature ;
typedef double cmsFloat64Number ;
typedef void const* cmsContext ;


 int cmsSigMultiLocalizedUnicodeType ;
 int cmsSigTextDescriptionType ;
 int cmsUNUSED_PARAMETER (void const*) ;

__attribute__((used)) static
cmsTagTypeSignature DecideTextDescType(cmsContext ContextID, cmsFloat64Number ICCVersion, const void *Data)
{
    cmsUNUSED_PARAMETER(ContextID);
    if (ICCVersion >= 4.0)
        return cmsSigMultiLocalizedUnicodeType;

    return cmsSigTextDescriptionType;

    cmsUNUSED_PARAMETER(Data);
}
