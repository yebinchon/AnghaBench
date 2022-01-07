
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsPipeline ;
typedef int cmsInt32Number ;


 int AddIdentityCLUT16 (int *) ;
 int AddIdentityMatrix (int *) ;
 int CheckFullLUT (int *,int) ;
 int DbgThread () ;
 int * cmsPipelineAlloc (int ,int,int) ;

__attribute__((used)) static
cmsInt32Number Check2Stage16LUT(void)
{
    cmsPipeline* lut = cmsPipelineAlloc(DbgThread(), 3, 3);

    AddIdentityMatrix(lut);
    AddIdentityCLUT16(lut);

    return CheckFullLUT(lut, 2);
}
