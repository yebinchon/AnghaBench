
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsToneCurve ;
typedef int cmsTagSignature ;
typedef int cmsPipeline ;
typedef int cmsInt32Number ;
typedef int cmsHPROFILE ;


 int AddIdentityCLUTfloat (int *) ;
 int CheckFloatLUT (int *) ;
 int * CreateSegmentedCurve () ;
 int DbgThread () ;
 int _cmsStageAllocLabV2ToV4 (int ) ;
 int _cmsStageAllocLabV4ToV2 (int ) ;
 int cmsAT_BEGIN ;
 int cmsAT_END ;
 int cmsFreeToneCurve (int ,int *) ;
 int * cmsPipelineAlloc (int ,int,int) ;
 int cmsPipelineFree (int ,int *) ;
 int cmsPipelineInsertStage (int ,int *,int ,int ) ;
 scalar_t__ cmsReadTag (int ,int ,int ) ;
 int cmsStageAllocToneCurves (int ,int,int **) ;
 int cmsWriteTag (int ,int ,int ,int *) ;

__attribute__((used)) static
cmsInt32Number CheckMPE(cmsInt32Number Pass, cmsHPROFILE hProfile, cmsTagSignature tag)
{
    cmsPipeline* Lut, *Pt;
    cmsToneCurve* G[3];
    cmsInt32Number rc;

    switch (Pass) {

        case 1:

            Lut = cmsPipelineAlloc(DbgThread(), 3, 3);

            cmsPipelineInsertStage(DbgThread(), Lut, cmsAT_BEGIN, _cmsStageAllocLabV2ToV4(DbgThread()));
            cmsPipelineInsertStage(DbgThread(), Lut, cmsAT_END, _cmsStageAllocLabV4ToV2(DbgThread()));
            AddIdentityCLUTfloat(Lut);

            G[0] = G[1] = G[2] = CreateSegmentedCurve();
            cmsPipelineInsertStage(DbgThread(), Lut, cmsAT_END, cmsStageAllocToneCurves(DbgThread(), 3, G));
            cmsFreeToneCurve(DbgThread(), G[0]);

            rc = cmsWriteTag(DbgThread(), hProfile, tag, Lut);
            cmsPipelineFree(DbgThread(), Lut);
            return rc;

        case 2:
            Pt = (cmsPipeline *) cmsReadTag(DbgThread(), hProfile, tag);
            if (Pt == ((void*)0)) return 0;
            return CheckFloatLUT(Pt);

        default:
            return 0;
    }
}
