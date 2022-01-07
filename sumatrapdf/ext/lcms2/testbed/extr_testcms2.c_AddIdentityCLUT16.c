
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt16Number ;
typedef int cmsPipeline ;


 int DbgThread () ;
 int cmsAT_END ;
 int cmsPipelineInsertStage (int ,int *,int ,int ) ;
 int cmsStageAllocCLut16bit (int ,int,int,int,int const*) ;

__attribute__((used)) static
void AddIdentityCLUT16(cmsPipeline* lut)
{
    const cmsUInt16Number Table[] = {

        0, 0, 0,
        0, 0, 0xffff,

        0, 0xffff, 0,
        0, 0xffff, 0xffff,

        0xffff, 0, 0,
        0xffff, 0, 0xffff,

        0xffff, 0xffff, 0,
        0xffff, 0xffff, 0xffff
    };


    cmsPipelineInsertStage(DbgThread(), lut, cmsAT_END, cmsStageAllocCLut16bit(DbgThread(), 2, 3, 3, Table));
}
