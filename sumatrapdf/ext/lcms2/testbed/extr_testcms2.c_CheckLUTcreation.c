
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsPipeline ;
typedef scalar_t__ cmsInt32Number ;


 int DbgThread () ;
 int * cmsPipelineAlloc (int ,int,int) ;
 int * cmsPipelineDup (int ,int *) ;
 int cmsPipelineFree (int ,int *) ;
 scalar_t__ cmsPipelineStageCount (int ,int *) ;

__attribute__((used)) static
cmsInt32Number CheckLUTcreation(void)
{
    cmsPipeline* lut;
    cmsPipeline* lut2;
    cmsInt32Number n1, n2;

    lut = cmsPipelineAlloc(DbgThread(), 1, 1);
    n1 = cmsPipelineStageCount(DbgThread(), lut);
    lut2 = cmsPipelineDup(DbgThread(), lut);
    n2 = cmsPipelineStageCount(DbgThread(), lut2);

    cmsPipelineFree(DbgThread(), lut);
    cmsPipelineFree(DbgThread(), lut2);

    return (n1 == 0) && (n2 == 0);
}
