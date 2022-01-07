
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsToneCurve ;
typedef int cmsPipeline ;
typedef int cmsHPROFILE ;


 int * CreateLinear () ;
 int * CreateStep () ;
 int SetTextTags (int ) ;
 int cmsAT_BEGIN ;
 int cmsCloseProfile (int ) ;
 int cmsFreeToneCurve (int *) ;
 int cmsOpenProfileFromFile (char*,char*) ;
 int * cmsPipelineAlloc (int ,int,int) ;
 int cmsPipelineFree (int *) ;
 int cmsPipelineInsertStage (int *,int ,int ) ;
 int cmsSetColorSpace (int ,int ) ;
 int cmsSetDeviceClass (int ,int ) ;
 int cmsSetPCS (int ,int ) ;
 int cmsSetProfileVersion (int ,double) ;
 int cmsSigAToB0Tag ;
 int cmsSigLabData ;
 int cmsSigLinkClass ;
 int cmsStageAllocToneCurves (int ,int,int **) ;
 int cmsWriteTag (int ,int ,int *) ;
 int fprintf (int ,char*) ;
 int remove (char*) ;
 int stderr ;

int main(int argc, char *argv[])
{
 cmsHPROFILE hProfile;
 cmsPipeline *AToB0;
 cmsToneCurve* PreLinear[3];
 cmsToneCurve *Lin, *Step;

 fprintf(stderr, "Creating lcmstiff8.icm...");

    remove("lcmstiff8.icm");
 hProfile = cmsOpenProfileFromFile("lcmstiff8.icm", "w");


 Lin = CreateLinear();
 Step = CreateStep();

 PreLinear[0] = Lin;
 PreLinear[1] = Step;
 PreLinear[2] = Step;

    AToB0 = cmsPipelineAlloc(0, 3, 3);

 cmsPipelineInsertStage(AToB0,
  cmsAT_BEGIN, cmsStageAllocToneCurves(0, 3, PreLinear));

 cmsSetColorSpace(hProfile, cmsSigLabData);
 cmsSetPCS(hProfile, cmsSigLabData);
 cmsSetDeviceClass(hProfile, cmsSigLinkClass);
 cmsSetProfileVersion(hProfile, 4.2);

    cmsWriteTag(hProfile, cmsSigAToB0Tag, AToB0);

    SetTextTags(hProfile);

 cmsCloseProfile(hProfile);

 cmsFreeToneCurve(Lin);
 cmsFreeToneCurve(Step);
 cmsPipelineFree(AToB0);

 fprintf(stderr, "Done.\n");

 return 0;
}
