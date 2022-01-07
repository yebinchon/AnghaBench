
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int * n; } ;
typedef TYPE_1__ cmsVEC3 ;
typedef scalar_t__ cmsUInt32Number ;
typedef int cmsMAT3 ;
typedef int cmsHPROFILE ;
typedef int cmsFloat64Number ;
typedef int cmsContext ;
struct TYPE_14__ {scalar_t__ X; scalar_t__ Y; scalar_t__ Z; } ;
typedef TYPE_2__ cmsCIEXYZ ;
typedef scalar_t__ cmsBool ;


 int ComputeAbsoluteIntent (int ,int ,TYPE_2__*,int *,TYPE_2__*,int *,int *) ;
 int ComputeBlackPointCompensation (int ,TYPE_2__*,TYPE_2__*,int *,TYPE_1__*) ;
 scalar_t__ FALSE ;
 scalar_t__ INTENT_ABSOLUTE_COLORIMETRIC ;
 int MAX_ENCODEABLE_XYZ ;
 scalar_t__ TRUE ;
 int _cmsMAT3identity (int ,int *) ;
 int _cmsReadCHAD (int ,int *,int ) ;
 int _cmsReadMediaWhitePoint (int ,TYPE_2__*,int ) ;
 int _cmsVEC3init (int ,TYPE_1__*,int ,int ,int ) ;
 int cmsDetectBlackPoint (int ,TYPE_2__*,int ,scalar_t__,int ) ;
 int cmsDetectDestinationBlackPoint (int ,TYPE_2__*,int ,scalar_t__,int ) ;

__attribute__((used)) static
cmsBool ComputeConversion(cmsContext ContextID,
                          cmsUInt32Number i,
                          cmsHPROFILE hProfiles[],
                          cmsUInt32Number Intent,
                          cmsBool BPC,
                          cmsFloat64Number AdaptationState,
                          cmsMAT3* m, cmsVEC3* off)
{

    int k;


    _cmsMAT3identity(ContextID, m);
    _cmsVEC3init(ContextID, off, 0, 0, 0);


    if (Intent == INTENT_ABSOLUTE_COLORIMETRIC) {

        cmsCIEXYZ WhitePointIn, WhitePointOut;
        cmsMAT3 ChromaticAdaptationMatrixIn, ChromaticAdaptationMatrixOut;

        _cmsReadMediaWhitePoint(ContextID, &WhitePointIn, hProfiles[i-1]);
        _cmsReadCHAD(ContextID, &ChromaticAdaptationMatrixIn, hProfiles[i-1]);

        _cmsReadMediaWhitePoint(ContextID, &WhitePointOut, hProfiles[i]);
        _cmsReadCHAD(ContextID, &ChromaticAdaptationMatrixOut, hProfiles[i]);

        if (!ComputeAbsoluteIntent(ContextID, AdaptationState,
                                  &WhitePointIn, &ChromaticAdaptationMatrixIn,
                                  &WhitePointOut, &ChromaticAdaptationMatrixOut, m)) return FALSE;

    }
    else {


        if (BPC) {

            cmsCIEXYZ BlackPointIn, BlackPointOut;

            cmsDetectBlackPoint(ContextID, &BlackPointIn, hProfiles[i-1], Intent, 0);
            cmsDetectDestinationBlackPoint(ContextID, &BlackPointOut, hProfiles[i], Intent, 0);


            if (BlackPointIn.X != BlackPointOut.X ||
                BlackPointIn.Y != BlackPointOut.Y ||
                BlackPointIn.Z != BlackPointOut.Z)
                    ComputeBlackPointCompensation(ContextID, &BlackPointIn, &BlackPointOut, m, off);
        }
    }
    for (k=0; k < 3; k++) {
        off ->n[k] /= MAX_ENCODEABLE_XYZ;
    }

    return TRUE;
}
