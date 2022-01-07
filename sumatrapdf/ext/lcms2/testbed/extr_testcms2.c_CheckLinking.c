
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsStage ;
typedef int cmsPipeline ;
typedef int * cmsHPROFILE ;


 int DbgThread () ;
 int cmsAT_BEGIN ;
 int cmsAT_END ;
 int cmsCloseProfile (int ,int *) ;
 int * cmsCreateInkLimitingDeviceLink (int ,int ,int) ;
 int cmsLinkTag (int ,int *,int ,scalar_t__) ;
 int * cmsOpenProfileFromFile (int ,char*,char*) ;
 int * cmsPipelineDup (int ,int *) ;
 int cmsPipelineFree (int ,int *) ;
 int cmsPipelineInsertStage (int ,int *,int ,int *) ;
 int cmsPipelineUnlinkStage (int ,int *,int ,int **) ;
 scalar_t__ cmsReadTag (int ,int *,int ) ;
 int cmsSaveProfileToFile (int ,int *,char*) ;
 scalar_t__ cmsSigAToB0Tag ;
 int cmsSigAToB1Tag ;
 int cmsSigCmykData ;
 scalar_t__ cmsTagLinkedTo (int ,int *,int ) ;
 int cmsWriteTag (int ,int *,scalar_t__,int *) ;

__attribute__((used)) static
int CheckLinking(void)
{
    cmsHPROFILE h;
    cmsPipeline * pipeline;
    cmsStage *stageBegin, *stageEnd;


     h = cmsCreateInkLimitingDeviceLink(DbgThread(), cmsSigCmykData, 150);


     cmsLinkTag(DbgThread(), h, cmsSigAToB1Tag, cmsSigAToB0Tag);


    if (!cmsSaveProfileToFile(DbgThread(), h, "lcms2link.icc")) return 0;
    cmsCloseProfile(DbgThread(), h);


    h = cmsOpenProfileFromFile(DbgThread(), "lcms2link.icc", "r");
    if (h == ((void*)0)) return 0;

    pipeline = (cmsPipeline*) cmsReadTag(DbgThread(), h, cmsSigAToB1Tag);
    if (pipeline == ((void*)0))
    {
        return 0;
    }

    pipeline = cmsPipelineDup(DbgThread(), pipeline);


    cmsPipelineUnlinkStage(DbgThread(), pipeline, cmsAT_BEGIN, &stageBegin);
    cmsPipelineUnlinkStage(DbgThread(), pipeline, cmsAT_END, &stageEnd);
    cmsPipelineInsertStage(DbgThread(), pipeline, cmsAT_END, stageEnd);
    cmsPipelineInsertStage(DbgThread(), pipeline, cmsAT_BEGIN, stageBegin);

    if (cmsTagLinkedTo(DbgThread(), h, cmsSigAToB1Tag) != cmsSigAToB0Tag) return 0;

    cmsWriteTag(DbgThread(), h, cmsSigAToB0Tag, pipeline);
    cmsPipelineFree(DbgThread(), pipeline);

    if (!cmsSaveProfileToFile(DbgThread(), h, "lcms2link2.icc")) return 0;
    cmsCloseProfile(DbgThread(), h);


    return 1;

}
