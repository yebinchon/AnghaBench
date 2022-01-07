
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsPipeline ;
typedef int cmsInt32Number ;


 scalar_t__ Check16LUT (int *) ;
 scalar_t__ CheckFloatLUT (int *) ;
 scalar_t__ CheckStagesLUT (int *,int) ;
 int DbgThread () ;
 int cmsPipelineFree (int ,int *) ;

__attribute__((used)) static
cmsInt32Number CheckFullLUT(cmsPipeline* lut, cmsInt32Number ExpectedStages)
{
    cmsInt32Number rc = CheckStagesLUT(lut, ExpectedStages) && Check16LUT(lut) && CheckFloatLUT(lut);

    cmsPipelineFree(DbgThread(), lut);
    return rc;
}
