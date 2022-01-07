
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt16Number ;
typedef int cmsStage ;
typedef int cmsPipeline ;
typedef int cmsInt32Number ;
typedef scalar_t__ cmsFloat32Number ;
typedef int Hint ;


 int DbgThread () ;
 scalar_t__ FLOAT_PRECISSION ;
 int Fail (char*) ;
 int IsGoodFixed15_16 (char*,scalar_t__,scalar_t__) ;
 int SubTest (char*) ;
 int cmsAT_BEGIN ;
 int * cmsPipelineAlloc (int ,int,int) ;
 int cmsPipelineEvalFloat (int ,scalar_t__*,scalar_t__*,int *) ;
 int cmsPipelineEvalReverseFloat (int ,scalar_t__*,scalar_t__*,scalar_t__*,int *) ;
 int cmsPipelineFree (int ,int *) ;
 int cmsPipelineInsertStage (int ,int *,int ,int *) ;
 int * cmsStageAllocCLut16bit (int ,int,int,int,int*) ;
 scalar_t__ fabsf (scalar_t__) ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;

__attribute__((used)) static
cmsInt32Number CheckReverseInterpolation4x3(void)
{
 cmsPipeline* Lut;
 cmsStage* clut;
 cmsFloat32Number Target[4], Result[4], Hint[4];
 cmsFloat32Number err, max;
 cmsInt32Number i;


 cmsUInt16Number Table[] = {

        0, 0, 0,
        0, 0, 0,

        0, 0, 0xffff,
        0, 0, 0xffff,

        0, 0xffff, 0,
        0, 0xffff, 0,

        0, 0xffff, 0xffff,
        0, 0xffff, 0xffff,

        0xffff, 0, 0,
        0xffff, 0, 0,

        0xffff, 0, 0xffff,
        0xffff, 0, 0xffff,

        0xffff, 0xffff, 0,
        0xffff, 0xffff, 0,

        0xffff, 0xffff, 0xffff,
        0xffff, 0xffff, 0xffff,
    };


   Lut = cmsPipelineAlloc(DbgThread(), 4, 3);

   clut = cmsStageAllocCLut16bit(DbgThread(), 2, 4, 3, Table);
   cmsPipelineInsertStage(DbgThread(), Lut, cmsAT_BEGIN, clut);


   SubTest("4->3 feasibility");
   for (i=0; i <= 100; i++) {

       Target[0] = i / 100.0F;
       Target[1] = Target[0];
       Target[2] = 0;
       Target[3] = 12;

       cmsPipelineEvalFloat(DbgThread(), Target, Result, Lut);

       if (!IsGoodFixed15_16("0", Target[0], Result[0])) goto Error;
       if (!IsGoodFixed15_16("1", Target[1], Result[1])) goto Error;
       if (!IsGoodFixed15_16("2", Target[2], Result[2])) goto Error;
   }

   SubTest("4->3 zero");
   Target[0] = 0;
   Target[1] = 0;
   Target[2] = 0;


   Target[3] = 0;


   Hint[0] = 0.1F; Hint[1] = 0.1F; Hint[2] = 0.1F;

   cmsPipelineEvalReverseFloat(DbgThread(), Target, Result, Hint, Lut);

   if (Result[0] != 0 || Result[1] != 0 || Result[2] != 0 || Result[3] != 0){

       Fail("Reverse interpolation didn't find zero");
       goto Error;
   }

   SubTest("4->3 find CMY");
   max = 0;
   for (i=0; i <= 100; i++) {

       cmsFloat32Number in = i / 100.0F;

       Target[0] = in; Target[1] = 0; Target[2] = 0;
       cmsPipelineEvalReverseFloat(DbgThread(), Target, Result, Hint, Lut);

       err = fabsf(in - Result[0]);
       if (err > max) max = err;

       memcpy(Hint, Result, sizeof(Hint));
   }

    cmsPipelineFree(DbgThread(), Lut);
    return (max <= FLOAT_PRECISSION);

Error:
    cmsPipelineFree(DbgThread(), Lut);
    return 0;
}
