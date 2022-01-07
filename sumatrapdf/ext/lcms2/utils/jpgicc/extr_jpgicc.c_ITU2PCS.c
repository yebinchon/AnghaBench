
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt16Number ;
typedef void* cmsContext ;
typedef int cmsCIELab ;


 int ITU2Lab (int const*,int *) ;
 int TRUE ;
 int UTILS_UNUSED_PARAMETER (void*) ;
 int cmsFloat2LabEncoded (int *,int *,int *) ;

__attribute__((used)) static
int ITU2PCS(cmsContext ContextID, register const cmsUInt16Number In[], register cmsUInt16Number Out[], register void* Cargo)
{
    cmsCIELab Lab;

    ITU2Lab(In, &Lab);
    cmsFloat2LabEncoded(((void*)0), Out, &Lab);
    return TRUE;

    UTILS_UNUSED_PARAMETER(Cargo);
    UTILS_UNUSED_PARAMETER(ContextID);
}
