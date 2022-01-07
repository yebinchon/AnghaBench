
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ cmsColorSpaceSignature ;
typedef int cmsBool ;


 int FALSE ;
 int TRUE ;
 scalar_t__ cmsSig4colorData ;
 scalar_t__ cmsSigCmykData ;
 scalar_t__ cmsSigLabData ;
 scalar_t__ cmsSigXYZData ;

__attribute__((used)) static
cmsBool ColorSpaceIsCompatible(cmsColorSpaceSignature a, cmsColorSpaceSignature b)
{

    if (a == b) return TRUE;


    if ((a == cmsSig4colorData) && (b == cmsSigCmykData)) return TRUE;
    if ((a == cmsSigCmykData) && (b == cmsSig4colorData)) return TRUE;


    if ((a == cmsSigXYZData) && (b == cmsSigLabData)) return TRUE;
    if ((a == cmsSigLabData) && (b == cmsSigXYZData)) return TRUE;

    return FALSE;
}
