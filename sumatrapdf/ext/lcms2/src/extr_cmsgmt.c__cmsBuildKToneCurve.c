
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt32Number ;
typedef int cmsToneCurve ;
typedef int cmsHPROFILE ;
typedef int cmsFloat64Number ;
typedef int cmsContext ;
typedef int cmsBool ;


 int * ComputeKToLstar (int ,int,int,int const*,int const*,int const*,int const*,int) ;
 int cmsFreeToneCurve (int ,int *) ;
 scalar_t__ cmsGetColorSpace (int ,int const) ;
 scalar_t__ cmsGetDeviceClass (int ,int const) ;
 int cmsIsToneCurveMonotonic (int ,int *) ;
 int * cmsJoinToneCurve (int ,int *,int *,int) ;
 scalar_t__ cmsSigCmykData ;
 scalar_t__ cmsSigOutputClass ;

cmsToneCurve* _cmsBuildKToneCurve(cmsContext ContextID,
                                   cmsUInt32Number nPoints,
                                   cmsUInt32Number nProfiles,
                                   const cmsUInt32Number Intents[],
                                   const cmsHPROFILE hProfiles[],
                                   const cmsBool BPC[],
                                   const cmsFloat64Number AdaptationStates[],
                                   cmsUInt32Number dwFlags)
{
    cmsToneCurve *in, *out, *KTone;


    if (cmsGetColorSpace(ContextID, hProfiles[0]) != cmsSigCmykData ||
        cmsGetColorSpace(ContextID, hProfiles[nProfiles-1])!= cmsSigCmykData) return ((void*)0);



    if (cmsGetDeviceClass(ContextID, hProfiles[nProfiles - 1]) != cmsSigOutputClass) return ((void*)0);



    in = ComputeKToLstar(ContextID, nPoints, nProfiles - 1, Intents, hProfiles, BPC, AdaptationStates, dwFlags);
    if (in == ((void*)0)) return ((void*)0);

    out = ComputeKToLstar(ContextID, nPoints, 1,
                            Intents + (nProfiles - 1),
                            &hProfiles [nProfiles - 1],
                            BPC + (nProfiles - 1),
                            AdaptationStates + (nProfiles - 1),
                            dwFlags);
    if (out == ((void*)0)) {
        cmsFreeToneCurve(ContextID, in);
        return ((void*)0);
    }



    KTone = cmsJoinToneCurve(ContextID, in, out, nPoints);


    cmsFreeToneCurve(ContextID, in); cmsFreeToneCurve(ContextID, out);


    if (KTone == ((void*)0)) return ((void*)0);


    if (!cmsIsToneCurveMonotonic(ContextID, KTone)) {
        cmsFreeToneCurve(ContextID, KTone);
        return ((void*)0);
    }

    return KTone;
}
