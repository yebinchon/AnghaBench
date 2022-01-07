
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt32Number ;
typedef int cmsStage ;
typedef int cmsPipeline ;
typedef int cmsInt32Number ;


 int CheckOne8D (int *,int,int,int,int,int,int,int,int) ;
 int DbgThread () ;
 int Sampler8D ;
 int cmsAT_BEGIN ;
 int * cmsPipelineAlloc (int ,int,int) ;
 int cmsPipelineFree (int ,int *) ;
 int cmsPipelineInsertStage (int ,int *,int ,int *) ;
 int * cmsStageAllocCLut16bitGranular (int ,int*,int,int,int *) ;
 int cmsStageSampleCLut16bit (int ,int *,int ,int *,int ) ;

__attribute__((used)) static
cmsInt32Number Check8DinterpGranular(void)
{
    cmsPipeline* lut;
    cmsStage* mpe;
    cmsUInt32Number Dimensions[] = { 4, 3, 3, 2, 2, 2, 2, 2 };

    lut = cmsPipelineAlloc(DbgThread(), 8, 3);
    mpe = cmsStageAllocCLut16bitGranular(DbgThread(), Dimensions, 8, 3, ((void*)0));
    cmsStageSampleCLut16bit(DbgThread(), mpe, Sampler8D, ((void*)0), 0);
    cmsPipelineInsertStage(DbgThread(), lut, cmsAT_BEGIN, mpe);



    if (!CheckOne8D(lut, 0, 0, 0, 0, 0, 0, 0, 0)) return 0;
    if (!CheckOne8D(lut, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff)) return 0;

    if (!CheckOne8D(lut, 0x8080, 0x8080, 0x8080, 0x8080, 0x1234, 0x1122, 0x0056, 0x0011)) return 0;
    if (!CheckOne8D(lut, 0x0000, 0xFE00, 0x80FF, 0x8888, 0x8078, 0x2233, 0x0088, 0x2020)) return 0;
    if (!CheckOne8D(lut, 0x1111, 0x2222, 0x3333, 0x4444, 0x1455, 0x3344, 0x1987, 0x4532)) return 0;
    if (!CheckOne8D(lut, 0x0000, 0x0012, 0x0013, 0x0014, 0x2333, 0x4455, 0x9988, 0x1200)) return 0;
    if (!CheckOne8D(lut, 0x3141, 0x1415, 0x1592, 0x9261, 0x4567, 0x5566, 0xfe56, 0x6666)) return 0;
    if (!CheckOne8D(lut, 0xFF00, 0xFF01, 0xFF12, 0xFF13, 0xF344, 0x6677, 0xbabe, 0xface)) return 0;

    cmsPipelineFree(DbgThread(), lut);

    return 1;
}
