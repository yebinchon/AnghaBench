
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int cmsUInt8Number ;
typedef int cmsUInt32Number ;
struct TYPE_6__ {int * Table16; } ;
typedef TYPE_1__ cmsToneCurve ;
typedef int * cmsHTRANSFORM ;
typedef scalar_t__ cmsHPROFILE ;
typedef int cmsContext ;
struct TYPE_7__ {double Y; } ;
typedef TYPE_2__ cmsCIEXYZ ;


 int TYPE_GRAY_8 ;
 int TYPE_XYZ_DBL ;
 int _cmsQuickSaturateWord (double) ;
 TYPE_1__* cmsBuildTabulatedToneCurve16 (int ,int,int *) ;
 int cmsCloseProfile (int ,scalar_t__) ;
 int * cmsCreateTransform (int ,scalar_t__,int ,scalar_t__,int ,int ,int ) ;
 scalar_t__ cmsCreateXYZProfile (int ) ;
 int cmsDeleteTransform (int ,int *) ;
 int cmsDoTransform (int ,int *,int *,TYPE_2__*,int) ;
 int cmsFLAGS_NOOPTIMIZE ;

__attribute__((used)) static
cmsToneCurve* ExtractGray2Y(cmsContext ContextID, cmsHPROFILE hProfile, cmsUInt32Number Intent)
{
    cmsToneCurve* Out = cmsBuildTabulatedToneCurve16(ContextID, 256, ((void*)0));
    cmsHPROFILE hXYZ = cmsCreateXYZProfile(ContextID);
    cmsHTRANSFORM xform = cmsCreateTransform(ContextID, hProfile, TYPE_GRAY_8, hXYZ, TYPE_XYZ_DBL, Intent, cmsFLAGS_NOOPTIMIZE);
    int i;

    if (Out != ((void*)0) && xform != ((void*)0)) {
        for (i=0; i < 256; i++) {

            cmsUInt8Number Gray = (cmsUInt8Number) i;
            cmsCIEXYZ XYZ;

            cmsDoTransform(ContextID, xform, &Gray, &XYZ, 1);

            Out ->Table16[i] =_cmsQuickSaturateWord(XYZ.Y * 65535.0);
        }
    }

    if (xform) cmsDeleteTransform(ContextID, xform);
    if (hXYZ) cmsCloseProfile(ContextID, hXYZ);
    return Out;
}
