
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int * cmsHTRANSFORM ;
typedef int cmsHPROFILE ;
typedef int cmsContext ;
struct TYPE_8__ {double X; double Y; double Z; } ;
typedef TYPE_1__ cmsCIEXYZ ;
struct TYPE_9__ {int L; int a; int b; } ;
typedef TYPE_2__ cmsCIELab ;
typedef int cmsBool ;


 int * CreateRoundtripXForm (int ,int ,int ) ;
 int FALSE ;
 int INTENT_PERCEPTUAL ;
 int LCMS_USED_AS_INPUT ;
 int TRUE ;
 int cmsDeleteTransform (int ,int *) ;
 int cmsDoTransform (int ,int *,TYPE_2__*,TYPE_2__*,int) ;
 int cmsIsIntentSupported (int ,int ,int ,int ) ;
 int cmsLab2XYZ (int ,int *,TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static
cmsBool BlackPointUsingPerceptualBlack(cmsContext ContextID, cmsCIEXYZ* BlackPoint, cmsHPROFILE hProfile)
{
    cmsHTRANSFORM hRoundTrip;
    cmsCIELab LabIn, LabOut;
    cmsCIEXYZ BlackXYZ;


    if (!cmsIsIntentSupported(ContextID, hProfile, INTENT_PERCEPTUAL, LCMS_USED_AS_INPUT)) {

        BlackPoint -> X = BlackPoint ->Y = BlackPoint -> Z = 0.0;
        return TRUE;
    }

    hRoundTrip = CreateRoundtripXForm(ContextID, hProfile, INTENT_PERCEPTUAL);
    if (hRoundTrip == ((void*)0)) {
        BlackPoint -> X = BlackPoint ->Y = BlackPoint -> Z = 0.0;
        return FALSE;
    }

    LabIn.L = LabIn.a = LabIn.b = 0;
    cmsDoTransform(ContextID, hRoundTrip, &LabIn, &LabOut, 1);


    if (LabOut.L > 50) LabOut.L = 50;
    LabOut.a = LabOut.b = 0;

    cmsDeleteTransform(ContextID, hRoundTrip);


    cmsLab2XYZ(ContextID, ((void*)0), &BlackXYZ, &LabOut);

    if (BlackPoint != ((void*)0))
        *BlackPoint = BlackXYZ;

    return TRUE;
}
