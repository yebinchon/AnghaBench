
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsPipeline ;
typedef double cmsFloat32Number ;


 int DbgThread () ;
 int cmsAT_END ;
 int cmsPipelineInsertStage (int ,int *,int ,int ) ;
 int cmsStageAllocCLutFloat (int ,int,int,int,double const*) ;

__attribute__((used)) static
void AddIdentityCLUTfloat(cmsPipeline* lut)
{
    const cmsFloat32Number Table[] = {

        0, 0, 0,
        0, 0, 1.0,

        0, 1.0, 0,
        0, 1.0, 1.0,

        1.0, 0, 0,
        1.0, 0, 1.0,

        1.0, 1.0, 0,
        1.0, 1.0, 1.0
    };

    cmsPipelineInsertStage(DbgThread(), lut, cmsAT_END, cmsStageAllocCLutFloat(DbgThread(), 2, 3, 3, Table));
}
