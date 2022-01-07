
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsHPROFILE ;
typedef int cmsContext ;
typedef int cmsCIEXYZ ;
typedef int cmsBool ;


 int TRUE ;
 int _cmsAssert (int ) ;
 int * cmsD50_XYZ (int ) ;
 scalar_t__ cmsGetDeviceClass (int ,int ) ;
 int cmsGetEncodedICCversion (int ,int ) ;
 scalar_t__ cmsReadTag (int ,int ,int ) ;
 scalar_t__ cmsSigDisplayClass ;
 int cmsSigMediaWhitePointTag ;

cmsBool _cmsReadMediaWhitePoint(cmsContext ContextID, cmsCIEXYZ* Dest, cmsHPROFILE hProfile)
{
    cmsCIEXYZ* Tag;

    _cmsAssert(Dest != ((void*)0));

    Tag = (cmsCIEXYZ*) cmsReadTag(ContextID, hProfile, cmsSigMediaWhitePointTag);


    if (Tag == ((void*)0)) {
        *Dest = *cmsD50_XYZ(ContextID);
        return TRUE;
    }


    if (cmsGetEncodedICCversion(ContextID, hProfile) < 0x4000000) {

        if (cmsGetDeviceClass(ContextID, hProfile) == cmsSigDisplayClass) {
            *Dest = *cmsD50_XYZ(ContextID);
            return TRUE;
        }
    }


    *Dest = *Tag;
    return TRUE;
}
