
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsPipeline ;
typedef int cmsInt32Number ;


 scalar_t__ CheckFloatLUT (int *) ;
 scalar_t__ CheckStagesLUT (int *,int) ;
 int DbgThread () ;
 int _cmsStageAllocLab2XYZ (int ) ;
 int _cmsStageAllocXYZ2Lab (int ) ;
 int cmsAT_END ;
 int * cmsPipelineAlloc (int ,int,int) ;
 int cmsPipelineFree (int ,int *) ;
 int cmsPipelineInsertStage (int ,int *,int ,int ) ;

__attribute__((used)) static
cmsInt32Number CheckLab2LabLUT(void)
{
    cmsPipeline* lut = cmsPipelineAlloc(DbgThread(), 3, 3);
    cmsInt32Number rc;

    cmsPipelineInsertStage(DbgThread(), lut, cmsAT_END, _cmsStageAllocLab2XYZ(DbgThread()));
    cmsPipelineInsertStage(DbgThread(), lut, cmsAT_END, _cmsStageAllocXYZ2Lab(DbgThread()));

    rc = CheckFloatLUT(lut) && CheckStagesLUT(lut, 2);

    cmsPipelineFree(DbgThread(), lut);

    return rc;
}
