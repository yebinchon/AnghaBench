
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsPipeline ;
typedef int cmsInt32Number ;


 int AddIdentityMatrix (int *) ;
 int CheckFullLUT (int *,int) ;
 int DbgThread () ;
 int * cmsPipelineAlloc (int ,int,int) ;

__attribute__((used)) static
cmsInt32Number Check1StageLUT(void)
{
    cmsPipeline* lut = cmsPipelineAlloc(DbgThread(), 3, 3);

    AddIdentityMatrix(lut);
    return CheckFullLUT(lut, 1);
}
