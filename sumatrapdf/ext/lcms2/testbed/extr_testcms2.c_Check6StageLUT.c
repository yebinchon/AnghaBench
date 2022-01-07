
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsPipeline ;
typedef int cmsInt32Number ;


 int Add3GammaCurves (int *,double) ;
 int AddIdentityCLUTfloat (int *) ;
 int AddIdentityMatrix (int *) ;
 int CheckFullLUT (int *,int) ;
 int DbgThread () ;
 int * cmsPipelineAlloc (int ,int,int) ;

__attribute__((used)) static
cmsInt32Number Check6StageLUT(void)
{
    cmsPipeline* lut = cmsPipelineAlloc(DbgThread(), 3, 3);

    AddIdentityMatrix(lut);
    Add3GammaCurves(lut, 1.0);
    AddIdentityCLUTfloat(lut);
    Add3GammaCurves(lut, 1.0);
    AddIdentityMatrix(lut);
    Add3GammaCurves(lut, 1.0);

    return CheckFullLUT(lut, 6);
}
