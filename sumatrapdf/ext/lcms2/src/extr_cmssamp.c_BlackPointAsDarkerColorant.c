
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ cmsUInt32Number ;
typedef int cmsUInt16Number ;
typedef int * cmsHTRANSFORM ;
typedef int * cmsHPROFILE ;
typedef int cmsContext ;
typedef int cmsColorSpaceSignature ;
struct TYPE_7__ {double X; double Y; double Z; } ;
typedef TYPE_1__ cmsCIEXYZ ;
struct TYPE_8__ {int L; scalar_t__ b; scalar_t__ a; } ;
typedef TYPE_2__ cmsCIELab ;
typedef int cmsBool ;


 int FALSE ;
 int LCMS_USED_AS_INPUT ;
 int TRUE ;
 int TYPE_Lab_DBL ;
 scalar_t__ T_CHANNELS (scalar_t__) ;
 int _cmsEndPointsBySpace (int ,int *,int **,scalar_t__*) ;
 int cmsCloseProfile (int ,int *) ;
 int * cmsCreateLab2Profile (int ,int *) ;
 int * cmsCreateTransform (int ,int *,scalar_t__,int *,int ,scalar_t__,int) ;
 int cmsDeleteTransform (int ,int *) ;
 int cmsDoTransform (int ,int *,int *,TYPE_2__*,int) ;
 int cmsFLAGS_NOCACHE ;
 int cmsFLAGS_NOOPTIMIZE ;
 scalar_t__ cmsFormatterForColorspaceOfProfile (int ,int *,int,int ) ;
 int cmsGetColorSpace (int ,int *) ;
 int cmsIsIntentSupported (int ,int *,scalar_t__,int ) ;
 int cmsLab2XYZ (int ,int *,TYPE_1__*,TYPE_2__*) ;
 int cmsUNUSED_PARAMETER (scalar_t__) ;

__attribute__((used)) static
cmsBool BlackPointAsDarkerColorant(cmsContext ContextID,
                                    cmsHPROFILE hInput,
                                    cmsUInt32Number Intent,
                                    cmsCIEXYZ* BlackPoint,
                                    cmsUInt32Number dwFlags)
{
    cmsUInt16Number *Black;
    cmsHTRANSFORM xform;
    cmsColorSpaceSignature Space;
    cmsUInt32Number nChannels;
    cmsUInt32Number dwFormat;
    cmsHPROFILE hLab;
    cmsCIELab Lab;
    cmsCIEXYZ BlackXYZ;


    if (!cmsIsIntentSupported(ContextID, hInput, Intent, LCMS_USED_AS_INPUT)) {

        BlackPoint -> X = BlackPoint ->Y = BlackPoint -> Z = 0.0;
        return FALSE;
    }


    dwFormat = cmsFormatterForColorspaceOfProfile(ContextID, hInput, 2, FALSE);


    Space = cmsGetColorSpace(ContextID, hInput);


    if (!_cmsEndPointsBySpace(Space, ((void*)0), &Black, &nChannels)) {

        BlackPoint -> X = BlackPoint ->Y = BlackPoint -> Z = 0.0;
        return FALSE;
    }

    if (nChannels != T_CHANNELS(dwFormat)) {
       BlackPoint -> X = BlackPoint ->Y = BlackPoint -> Z = 0.0;
       return FALSE;
    }


    hLab = cmsCreateLab2Profile(ContextID, ((void*)0));
    if (hLab == ((void*)0)) {
       BlackPoint -> X = BlackPoint ->Y = BlackPoint -> Z = 0.0;
       return FALSE;
    }


    xform = cmsCreateTransform(ContextID, hInput, dwFormat,
                                hLab, TYPE_Lab_DBL, Intent, cmsFLAGS_NOOPTIMIZE|cmsFLAGS_NOCACHE);
    cmsCloseProfile(ContextID, hLab);

    if (xform == ((void*)0)) {


        BlackPoint -> X = BlackPoint ->Y = BlackPoint -> Z = 0.0;
        return FALSE;
    }


    cmsDoTransform(ContextID, xform, Black, &Lab, 1);


    Lab.a = Lab.b = 0;
    if (Lab.L > 50) Lab.L = 50;


    cmsDeleteTransform(ContextID, xform);


    cmsLab2XYZ(ContextID, ((void*)0), &BlackXYZ, &Lab);

    if (BlackPoint != ((void*)0))
        *BlackPoint = BlackXYZ;

    return TRUE;

    cmsUNUSED_PARAMETER(dwFlags);
}
