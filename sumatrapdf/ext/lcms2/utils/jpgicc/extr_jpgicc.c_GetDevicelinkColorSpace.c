
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsHPROFILE ;
typedef int cmsColorSpaceSignature ;


 int _cmsLCMScolorSpace (int *,int ) ;
 int cmsGetPCS (int *,int ) ;

__attribute__((used)) static
int GetDevicelinkColorSpace(cmsHPROFILE hProfile)
{
    cmsColorSpaceSignature ProfileSpace = cmsGetPCS(((void*)0), hProfile);

    return _cmsLCMScolorSpace(((void*)0), ProfileSpace);
}
