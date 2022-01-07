
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int cmsUInt32Number ;
typedef int cmsStage ;
typedef int cmsPipeline ;
struct TYPE_6__ {int UsedSpace; } ;
typedef TYPE_1__ cmsIOHANDLER ;
typedef int cmsHPROFILE ;
typedef int cmsContext ;
typedef scalar_t__ cmsColorSpaceSignature ;


 int WriteInputLUT (int ,TYPE_1__*,int ,int ,int ) ;
 int WriteInputMatrixShaper (int ,TYPE_1__*,int ,int *,int *) ;
 int WriteNamedColorCSA (int ,TYPE_1__*,int ,int ) ;
 int * _cmsReadInputLUT (int ,int ,int ) ;
 int cmsERROR_COLORSPACE_CHECK ;
 scalar_t__ cmsGetDeviceClass (int ,int ) ;
 scalar_t__ cmsGetPCS (int ,int ) ;
 scalar_t__ cmsPipelineCheckAndRetreiveStages (int ,int *,int,int ,int ,int **,int **) ;
 int cmsPipelineFree (int ,int *) ;
 int cmsSigCurveSetElemType ;
 scalar_t__ cmsSigLabData ;
 int cmsSigMatrixElemType ;
 scalar_t__ cmsSigNamedColorClass ;
 scalar_t__ cmsSigXYZData ;
 int cmsSignalError (int ,int ,char*) ;

__attribute__((used)) static
cmsUInt32Number GenerateCSA(cmsContext ContextID,
                            cmsHPROFILE hProfile,
                            cmsUInt32Number Intent,
                            cmsUInt32Number dwFlags,
                            cmsIOHANDLER* mem)
{
    cmsUInt32Number dwBytesUsed;
    cmsPipeline* lut = ((void*)0);
    cmsStage* Matrix, *Shaper;



    if (cmsGetDeviceClass(ContextID, hProfile) == cmsSigNamedColorClass) {

        if (!WriteNamedColorCSA(ContextID, mem, hProfile, Intent)) goto Error;
    }
    else {




        cmsColorSpaceSignature ColorSpace = cmsGetPCS(ContextID, hProfile);

        if (ColorSpace != cmsSigXYZData &&
            ColorSpace != cmsSigLabData) {

                cmsSignalError(ContextID, cmsERROR_COLORSPACE_CHECK, "Invalid output color space");
                goto Error;
        }



        lut = _cmsReadInputLUT(ContextID, hProfile, Intent);
        if (lut == ((void*)0)) goto Error;



        if (cmsPipelineCheckAndRetreiveStages(ContextID, lut, 2, cmsSigCurveSetElemType, cmsSigMatrixElemType, &Shaper, &Matrix)) {

            if (!WriteInputMatrixShaper(ContextID, mem, hProfile, Matrix, Shaper)) goto Error;

        }
        else {

           if (!WriteInputLUT(ContextID, mem, hProfile, Intent, dwFlags)) goto Error;
        }
    }



    dwBytesUsed = mem ->UsedSpace;


    if (lut != ((void*)0)) cmsPipelineFree(ContextID, lut);


    return dwBytesUsed;

Error:
    if (lut != ((void*)0)) cmsPipelineFree(ContextID, lut);
    return 0;
}
