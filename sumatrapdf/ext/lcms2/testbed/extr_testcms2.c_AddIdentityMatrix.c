
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsPipeline ;
typedef int cmsFloat64Number ;


 int DbgThread () ;
 int cmsAT_END ;
 int cmsPipelineInsertStage (int ,int *,int ,int ) ;
 int cmsStageAllocMatrix (int ,int,int,int const*,int *) ;

__attribute__((used)) static
void AddIdentityMatrix(cmsPipeline* lut)
{
    const cmsFloat64Number Identity[] = { 1, 0, 0,
                          0, 1, 0,
                          0, 0, 1,
                          0, 0, 0 };

    cmsPipelineInsertStage(DbgThread(), lut, cmsAT_END, cmsStageAllocMatrix(DbgThread(), 3, 3, Identity, ((void*)0)));
}
