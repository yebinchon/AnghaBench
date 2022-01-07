
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt32Number ;
typedef int cmsHTRANSFORM ;
typedef int cmsHPROFILE ;
typedef double cmsFloat64Number ;
typedef int cmsContext ;
typedef int cmsBool ;


 int FALSE ;
 int INTENT_RELATIVE_COLORIMETRIC ;
 int TYPE_Lab_DBL ;
 int cmsCloseProfile (int ,int ) ;
 int cmsCreateExtendedTransform (int ,int,int *,int *,int *,double*,int *,int ,int ,int ,int) ;
 int cmsCreateLab4Profile (int ,int *) ;
 int cmsFLAGS_NOCACHE ;
 int cmsFLAGS_NOOPTIMIZE ;

__attribute__((used)) static
cmsHTRANSFORM CreateRoundtripXForm(cmsContext ContextID, cmsHPROFILE hProfile, cmsUInt32Number nIntent)
{
    cmsHPROFILE hLab = cmsCreateLab4Profile(ContextID, ((void*)0));
    cmsHTRANSFORM xform;
    cmsBool BPC[4] = { FALSE, FALSE, FALSE, FALSE };
    cmsFloat64Number States[4] = { 1.0, 1.0, 1.0, 1.0 };
    cmsHPROFILE hProfiles[4];
    cmsUInt32Number Intents[4];

    hProfiles[0] = hLab; hProfiles[1] = hProfile; hProfiles[2] = hProfile; hProfiles[3] = hLab;
    Intents[0] = INTENT_RELATIVE_COLORIMETRIC; Intents[1] = nIntent; Intents[2] = INTENT_RELATIVE_COLORIMETRIC; Intents[3] = INTENT_RELATIVE_COLORIMETRIC;

    xform = cmsCreateExtendedTransform(ContextID, 4, hProfiles, BPC, Intents,
        States, ((void*)0), 0, TYPE_Lab_DBL, TYPE_Lab_DBL, cmsFLAGS_NOCACHE|cmsFLAGS_NOOPTIMIZE);

    cmsCloseProfile(ContextID, hLab);
    return xform;
}
