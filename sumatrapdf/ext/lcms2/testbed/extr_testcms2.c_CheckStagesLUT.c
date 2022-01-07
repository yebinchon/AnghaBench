
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsPipeline ;
typedef int cmsInt32Number ;


 int DbgThread () ;
 int cmsPipelineInputChannels (int ,int *) ;
 int cmsPipelineOutputChannels (int ,int *) ;
 int cmsPipelineStageCount (int ,int *) ;

__attribute__((used)) static
cmsInt32Number CheckStagesLUT(cmsPipeline* lut, cmsInt32Number ExpectedStages)
{

    cmsInt32Number nInpChans, nOutpChans, nStages;

    nInpChans = cmsPipelineInputChannels(DbgThread(), lut);
    nOutpChans = cmsPipelineOutputChannels(DbgThread(), lut);
    nStages = cmsPipelineStageCount(DbgThread(), lut);

    return (nInpChans == 3) && (nOutpChans == 3) && (nStages == ExpectedStages);
}
