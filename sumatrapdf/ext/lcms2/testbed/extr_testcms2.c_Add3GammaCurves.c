
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsToneCurve ;
typedef int cmsPipeline ;
typedef int cmsFloat64Number ;


 int DbgThread () ;
 int cmsAT_END ;
 int * cmsBuildGamma (int ,int ) ;
 int cmsFreeToneCurve (int ,int *) ;
 int cmsPipelineInsertStage (int ,int *,int ,int ) ;
 int cmsStageAllocToneCurves (int ,int,int **) ;

__attribute__((used)) static
void Add3GammaCurves(cmsPipeline* lut, cmsFloat64Number Curve)
{
    cmsToneCurve* id = cmsBuildGamma(DbgThread(), Curve);
    cmsToneCurve* id3[3];

    id3[0] = id;
    id3[1] = id;
    id3[2] = id;

    cmsPipelineInsertStage(DbgThread(), lut, cmsAT_END, cmsStageAllocToneCurves(DbgThread(), 3, id3));

    cmsFreeToneCurve(DbgThread(), id);
}
