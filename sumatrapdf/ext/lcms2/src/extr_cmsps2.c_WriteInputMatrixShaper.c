
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int cmsToneCurve ;
typedef int cmsStage ;
struct TYPE_5__ {TYPE_1__* v; } ;
typedef TYPE_2__ cmsMAT3 ;
typedef int cmsIOHANDLER ;
typedef int cmsHPROFILE ;
typedef int cmsFloat64Number ;
typedef int cmsContext ;
typedef scalar_t__ cmsColorSpaceSignature ;
typedef int cmsCIEXYZ ;
struct TYPE_4__ {int * n; } ;
typedef int Mat ;


 int EmitCIEBasedA (int ,int *,int *,int *) ;
 int EmitCIEBasedABC (int ,int *,int *,int **,int *) ;
 int GetPtrToMatrix (int *) ;
 int INTENT_RELATIVE_COLORIMETRIC ;
 int MAX_ENCODEABLE_XYZ ;
 int ** _cmsStageGetPtrToCurveSet (int *) ;
 int cmsDetectBlackPoint (int ,int *,int ,int ,int ) ;
 int cmsERROR_COLORSPACE_CHECK ;
 scalar_t__ cmsGetColorSpace (int ,int ) ;
 scalar_t__ cmsSigGrayData ;
 scalar_t__ cmsSigRgbData ;
 int cmsSignalError (int ,int ,char*) ;
 int memmove (TYPE_2__*,int ,int) ;

__attribute__((used)) static
int WriteInputMatrixShaper(cmsContext ContextID, cmsIOHANDLER* m, cmsHPROFILE hProfile, cmsStage* Matrix, cmsStage* Shaper)
{
    cmsColorSpaceSignature ColorSpace;
    int rc;
    cmsCIEXYZ BlackPointAdaptedToD50;

    ColorSpace = cmsGetColorSpace(ContextID, hProfile);

    cmsDetectBlackPoint(ContextID, &BlackPointAdaptedToD50, hProfile, INTENT_RELATIVE_COLORIMETRIC, 0);

    if (ColorSpace == cmsSigGrayData) {

        cmsToneCurve** ShaperCurve = _cmsStageGetPtrToCurveSet(Shaper);
        rc = EmitCIEBasedA(ContextID, m, ShaperCurve[0], &BlackPointAdaptedToD50);

    }
    else
        if (ColorSpace == cmsSigRgbData) {

            cmsMAT3 Mat;
            int i, j;

            memmove(&Mat, GetPtrToMatrix(Matrix), sizeof(Mat));

            for (i = 0; i < 3; i++)
                for (j = 0; j < 3; j++)
                    Mat.v[i].n[j] *= MAX_ENCODEABLE_XYZ;

            rc = EmitCIEBasedABC(ContextID, m, (cmsFloat64Number *) &Mat,
                _cmsStageGetPtrToCurveSet(Shaper),
                &BlackPointAdaptedToD50);
        }
        else {

            cmsSignalError(ContextID, cmsERROR_COLORSPACE_CHECK, "Profile is not suitable for CSA. Unsupported colorspace.");
            return 0;
        }

    return rc;
}
