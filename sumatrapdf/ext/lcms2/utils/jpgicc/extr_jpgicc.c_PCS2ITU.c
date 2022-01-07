
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt16Number ;
typedef void* cmsContext ;
typedef int cmsCIELab ;


 int Lab2ITU (int *,int *) ;
 int TRUE ;
 int UTILS_UNUSED_PARAMETER (void*) ;
 int cmsDesaturateLab (int *,int *,int,int,int,int) ;
 int cmsLabEncoded2Float (int *,int *,int const*) ;

__attribute__((used)) static
int PCS2ITU(cmsContext ContextID, register const cmsUInt16Number In[], register cmsUInt16Number Out[], register void* Cargo)
{
    cmsCIELab Lab;

    cmsLabEncoded2Float(((void*)0), &Lab, In);
    cmsDesaturateLab(((void*)0), &Lab, 85, -85, 125, -75);
    Lab2ITU(&Lab, Out);
    return TRUE;

    UTILS_UNUSED_PARAMETER(Cargo);
    UTILS_UNUSED_PARAMETER(ContextID);
}
