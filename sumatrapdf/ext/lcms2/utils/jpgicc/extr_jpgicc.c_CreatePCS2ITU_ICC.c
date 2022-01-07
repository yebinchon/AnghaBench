
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsStage ;
typedef int cmsPipeline ;
typedef int * cmsHPROFILE ;


 int GRID_POINTS ;
 int PCS2ITU ;
 int cmsAT_BEGIN ;
 int * cmsCreateProfilePlaceholder (int ) ;
 int * cmsPipelineAlloc (int ,int,int) ;
 int cmsPipelineFree (int *,int *) ;
 int cmsPipelineInsertStage (int *,int *,int ,int *) ;
 int cmsSetColorSpace (int *,int *,int ) ;
 int cmsSetDeviceClass (int *,int *,int ) ;
 int cmsSetPCS (int *,int *,int ) ;
 int cmsSigBToA0Tag ;
 int cmsSigColorSpaceClass ;
 int cmsSigLabData ;
 int * cmsStageAllocCLut16bit (int ,int ,int,int,int *) ;
 int cmsStageSampleCLut16bit (int *,int *,int ,int *,int ) ;
 int cmsWriteTag (int *,int *,int ,int *) ;

__attribute__((used)) static
cmsHPROFILE CreatePCS2ITU_ICC(void)
{
    cmsHPROFILE hProfile;
    cmsPipeline* BToA0;
    cmsStage* ColorMap;

    BToA0 = cmsPipelineAlloc(0, 3, 3);
    if (BToA0 == ((void*)0)) return ((void*)0);

    ColorMap = cmsStageAllocCLut16bit(0, GRID_POINTS, 3, 3, ((void*)0));
    if (ColorMap == ((void*)0)) return ((void*)0);

    cmsPipelineInsertStage(((void*)0), BToA0, cmsAT_BEGIN, ColorMap);
    cmsStageSampleCLut16bit(((void*)0), ColorMap, PCS2ITU, ((void*)0), 0);

    hProfile = cmsCreateProfilePlaceholder(0);
    if (hProfile == ((void*)0)) {
        cmsPipelineFree(((void*)0), BToA0);
        return ((void*)0);
    }

    cmsWriteTag(((void*)0), hProfile, cmsSigBToA0Tag, BToA0);
    cmsSetColorSpace(((void*)0), hProfile, cmsSigLabData);
    cmsSetPCS(((void*)0), hProfile, cmsSigLabData);
    cmsSetDeviceClass(((void*)0), hProfile, cmsSigColorSpaceClass);

    cmsPipelineFree(((void*)0), BToA0);

    return hProfile;
}
