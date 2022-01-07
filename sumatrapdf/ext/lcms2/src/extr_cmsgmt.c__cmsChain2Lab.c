
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt32Number ;
typedef int * cmsHTRANSFORM ;
typedef int * cmsHPROFILE ;
typedef double cmsFloat64Number ;
typedef int cmsContext ;
typedef scalar_t__ cmsBool ;


 int INTENT_RELATIVE_COLORIMETRIC ;
 int cmsCloseProfile (int ,int *) ;
 int * cmsCreateExtendedTransform (int ,int,int **,scalar_t__*,int*,double*,int *,int ,int,int,int) ;
 int * cmsCreateLab4Profile (int ,int *) ;

cmsHTRANSFORM _cmsChain2Lab(cmsContext ContextID,
                            cmsUInt32Number nProfiles,
                            cmsUInt32Number InputFormat,
                            cmsUInt32Number OutputFormat,
                            const cmsUInt32Number Intents[],
                            const cmsHPROFILE hProfiles[],
                            const cmsBool BPC[],
                            const cmsFloat64Number AdaptationStates[],
                            cmsUInt32Number dwFlags)
{
    cmsHTRANSFORM xform;
    cmsHPROFILE hLab;
    cmsHPROFILE ProfileList[256];
    cmsBool BPCList[256];
    cmsFloat64Number AdaptationList[256];
    cmsUInt32Number IntentList[256];
    cmsUInt32Number i;



    if (nProfiles > 254) return ((void*)0);


    hLab = cmsCreateLab4Profile(ContextID, ((void*)0));
    if (hLab == ((void*)0)) return ((void*)0);


    for (i=0; i < nProfiles; i++) {

        ProfileList[i] = hProfiles[i];
        BPCList[i] = BPC[i];
        AdaptationList[i] = AdaptationStates[i];
        IntentList[i] = Intents[i];
    }


    ProfileList[nProfiles] = hLab;
    BPCList[nProfiles] = 0;
    AdaptationList[nProfiles] = 1.0;
    IntentList[nProfiles] = INTENT_RELATIVE_COLORIMETRIC;


    xform = cmsCreateExtendedTransform(ContextID, nProfiles + 1, ProfileList,
                                       BPCList,
                                       IntentList,
                                       AdaptationList,
                                       ((void*)0), 0,
                                       InputFormat,
                                       OutputFormat,
                                       dwFlags);

    cmsCloseProfile(ContextID, hLab);

    return xform;
}
