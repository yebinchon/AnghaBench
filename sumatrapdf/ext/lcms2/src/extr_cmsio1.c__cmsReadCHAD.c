
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsMAT3 ;
typedef int cmsHPROFILE ;
typedef int cmsContext ;
typedef int cmsCIEXYZ ;
typedef int cmsBool ;


 int TRUE ;
 int _cmsAdaptationMatrix (int ,int *,int *,int *,int ) ;
 int _cmsAssert (int ) ;
 int _cmsMAT3identity (int ,int *) ;
 int cmsD50_XYZ (int ) ;
 scalar_t__ cmsGetDeviceClass (int ,int ) ;
 int cmsGetEncodedICCversion (int ,int ) ;
 scalar_t__ cmsReadTag (int ,int ,int ) ;
 int cmsSigChromaticAdaptationTag ;
 scalar_t__ cmsSigDisplayClass ;
 int cmsSigMediaWhitePointTag ;

cmsBool _cmsReadCHAD(cmsContext ContextID, cmsMAT3* Dest, cmsHPROFILE hProfile)
{
    cmsMAT3* Tag;

    _cmsAssert(Dest != ((void*)0));

    Tag = (cmsMAT3*) cmsReadTag(ContextID, hProfile, cmsSigChromaticAdaptationTag);

    if (Tag != ((void*)0)) {
        *Dest = *Tag;
        return TRUE;
    }


    _cmsMAT3identity(ContextID, Dest);


    if (cmsGetEncodedICCversion(ContextID, hProfile) < 0x4000000) {

        if (cmsGetDeviceClass(ContextID, hProfile) == cmsSigDisplayClass) {

            cmsCIEXYZ* White = (cmsCIEXYZ*) cmsReadTag(ContextID, hProfile, cmsSigMediaWhitePointTag);

            if (White == ((void*)0)) {

                _cmsMAT3identity(ContextID, Dest);
                return TRUE;
            }

            return _cmsAdaptationMatrix(ContextID, Dest, ((void*)0), White, cmsD50_XYZ(ContextID));
        }
    }

    return TRUE;
}
