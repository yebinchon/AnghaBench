
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsTagSignature ;
typedef int cmsPipeline ;
typedef int cmsInt32Number ;
typedef int cmsHPROFILE ;


 int Check16LUT (int *) ;
 int DbgThread () ;
 int _cmsStageAllocIdentityCLut (int ,int) ;
 int _cmsStageAllocIdentityCurves (int ,int) ;
 int cmsAT_BEGIN ;
 int cmsAT_END ;
 int * cmsPipelineAlloc (int ,int,int) ;
 int cmsPipelineFree (int ,int *) ;
 int cmsPipelineInsertStage (int ,int *,int ,int ) ;
 scalar_t__ cmsReadTag (int ,int ,int ) ;
 int cmsWriteTag (int ,int ,int ,int *) ;

__attribute__((used)) static
cmsInt32Number CheckLUT(cmsInt32Number Pass, cmsHPROFILE hProfile, cmsTagSignature tag)
{
    cmsPipeline* Lut, *Pt;
    cmsInt32Number rc;


    switch (Pass) {

        case 1:

            Lut = cmsPipelineAlloc(DbgThread(), 3, 3);
            if (Lut == ((void*)0)) return 0;


            cmsPipelineInsertStage(DbgThread(), Lut, cmsAT_BEGIN, _cmsStageAllocIdentityCurves(DbgThread(), 3));
            cmsPipelineInsertStage(DbgThread(), Lut, cmsAT_END, _cmsStageAllocIdentityCLut(DbgThread(), 3));
            cmsPipelineInsertStage(DbgThread(), Lut, cmsAT_END, _cmsStageAllocIdentityCurves(DbgThread(), 3));

            rc = cmsWriteTag(DbgThread(), hProfile, tag, Lut);
            cmsPipelineFree(DbgThread(), Lut);
            return rc;

        case 2:
            Pt = (cmsPipeline *) cmsReadTag(DbgThread(), hProfile, tag);
            if (Pt == ((void*)0)) return 0;


            return Check16LUT(Pt);

        default:
            return 0;
    }
}
