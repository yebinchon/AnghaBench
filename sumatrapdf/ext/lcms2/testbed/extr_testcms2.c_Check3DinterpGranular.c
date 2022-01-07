
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt32Number ;
typedef int cmsStage ;
typedef int cmsPipeline ;
typedef int cmsInt32Number ;


 int CheckOne3D (int *,int,int,int) ;
 int DbgThread () ;
 int Sampler3D ;
 int cmsAT_BEGIN ;
 int * cmsPipelineAlloc (int ,int,int) ;
 int cmsPipelineFree (int ,int *) ;
 int cmsPipelineInsertStage (int ,int *,int ,int *) ;
 int * cmsStageAllocCLut16bitGranular (int ,int*,int,int,int *) ;
 int cmsStageSampleCLut16bit (int ,int *,int ,int *,int ) ;

__attribute__((used)) static
cmsInt32Number Check3DinterpGranular(void)
{
    cmsPipeline* lut;
    cmsStage* mpe;
    cmsUInt32Number Dimensions[] = { 7, 8, 9 };

    lut = cmsPipelineAlloc(DbgThread(), 3, 3);
    mpe = cmsStageAllocCLut16bitGranular(DbgThread(), Dimensions, 3, 3, ((void*)0));
    cmsStageSampleCLut16bit(DbgThread(), mpe, Sampler3D, ((void*)0), 0);
    cmsPipelineInsertStage(DbgThread(), lut, cmsAT_BEGIN, mpe);



    if (!CheckOne3D(lut, 0, 0, 0)) return 0;
    if (!CheckOne3D(lut, 0xffff, 0xffff, 0xffff)) return 0;

    if (!CheckOne3D(lut, 0x8080, 0x8080, 0x8080)) return 0;
    if (!CheckOne3D(lut, 0x0000, 0xFE00, 0x80FF)) return 0;
    if (!CheckOne3D(lut, 0x1111, 0x2222, 0x3333)) return 0;
    if (!CheckOne3D(lut, 0x0000, 0x0012, 0x0013)) return 0;
    if (!CheckOne3D(lut, 0x3141, 0x1415, 0x1592)) return 0;
    if (!CheckOne3D(lut, 0xFF00, 0xFF01, 0xFF12)) return 0;

    cmsPipelineFree(DbgThread(), lut);

    return 1;
}
